<template>
    <main class="h-screen grid grid-rows-3 justify-center color-bg">
        <InfoDisplay :color="infoColor" />
        <ol class="flex justify-center items-center" :style="{ color: textColor }">
            <TrackCard
                class="h-64 opacity-60 -mr-14"
                :artist="lastPlayed.artist"
                :track="lastPlayed.track"
                :album="lastPlayed.album"
                :albumArt="lastPlayed.albumArt"
                hide-info
            />
            <TrackCard
                class="h-80 z-10"
                :artist="nowPlaying.artist"
                :track="nowPlaying.track"
                :album="nowPlaying.album"
                :albumArt="nowPlaying.albumArt"
            />
            <TrackCard
                class="h-64 opacity-60 -ml-14"
                :artist="nextPlayed.artist"
                :track="nextPlayed.track"
                :album="nextPlayed.album"
                :albumArt="nextPlayed.albumArt"
                hide-info
            />
        </ol>
    </main>
</template>

<script lang="ts">
import { computed, defineComponent, onMounted, ref, watch } from "vue";
import TrackCard from "@/components/TrackCard.vue";
import InfoDisplay from "@/components/InfoDisplay.vue";
import { prominent } from "color.js";
import deltaE from "delta-e";
import Color from "color";

export interface Track {
    artist: string;
    track: string;
    album: string;
    albumArt: string;
}

export default defineComponent({
    name: "NowPlaying",
    components: {
        TrackCard,
        InfoDisplay
    },
    setup() {
        const trackHistory = ref([
            {
                artist: "Twenty One Pilots",
                track: "Hometown",
                album: "Blurryface",
                albumArt: "https://images-na.ssl-images-amazon.com/images/I/7103AD5YBlL._SL1425_.jpg"
            },
            {
                artist: "Twenty One Pilots",
                track: "Jumpsuit",
                album: "Trench",
                albumArt: "https://images-na.ssl-images-amazon.com/images/I/81ucF7MxoeL._SL1441_.jpg"
            },
            {
                artist: "Starset",
                track: "Telepathic",
                album: "Veesels 2.0",
                albumArt: "https://images-na.ssl-images-amazon.com/images/I/91sNg8CxcLL._SL1500_.jpg"
            },
            {
                artist: "Glass Animals",
                track: "Tokyo Drifting",
                album: "Dreamland",
                albumArt: "https://upload.wikimedia.org/wikipedia/en/1/11/Dreamland_%28Glass_Animals%29.png"
            },
            {
                artist: "Dayseeker",
                track: "Crooked Soul",
                album: "Crooked Soul (Single)",
                albumArt: "https://lastfm.freetls.fastly.net/i/u/500x500/0acddb0724f63ad37eb3c76a6a81733c.jpg"
            },
            {
                artist: "I Prevail",
                track: "Hurricane",
                album: "Trauma",
                albumArt: "https://pbs.twimg.com/media/Dzz_XLWX4AUl7C9.jpg"
            },
            {
                artist: "Architects",
                track: "Black Lungs",
                album: "For Those That Wish To Exist",
                albumArt: "https://upload.wikimedia.org/wikipedia/en/c/cc/ArchitectsFTTWTE.jpg"
            }
        ] as Track[]);

        const nowPlaying = computed(() => trackHistory.value[trackHistory.value.length - 1]);
        const lastPlayed = computed(() => trackHistory.value[trackHistory.value.length - 2]);
        const nextPlayed = computed(() => trackHistory.value[0]);

        /* Calculate colors of current album art */
        const palette = ref([] as string[]);
        const textColor = ref("white"); // TODO: set dynamically

        const updatePalette = async () => {
            // Some constants
            const GROUP_SIZE = 25; // Larger group size => more similar colors grouped together
            const NUM_SAMPLES = 15; // Number of initial prominent colors pulled from image
            const NUM_SATURATED = Math.floor(NUM_SAMPLES / 2); // Top N saturated colors pulled from Samples

            // Get a palette of most prominent colors
            const samples = (await prominent(nowPlaying.value.albumArt, { group: GROUP_SIZE, amount: NUM_SAMPLES })) as number[][];
            const colors = samples.map((c, i) => {
                const color = Color.rgb(c);
                const prominence = 1 - i / samples.length; // 0 -> 1, N -> 0
                const value = color.chroma() * prominence;
                return { color, value };
            });

            // Of the top colors, choose the most saturated colors (most colorful)
            const satColors = colors.sort((a, b) => b.value - a.value).slice(0, NUM_SATURATED);

            // Convert colors to LAB format
            const colorsLab = satColors.map(({ color }) => ({ c: color, lab: { L: color.l(), A: color.a(), B: color.b() } }));

            // c1 will be the most saturated prominent color
            const c1 = colorsLab.shift();
            if (!c1) return;

            // Second color will be most "different" color
            const diffs = colorsLab.map((c) => ({ c, delta: deltaE.getDeltaE00(c1.lab, c.lab) })).sort((a, b) => b.delta - a.delta);
            const c2 = diffs[0].c;

            palette.value = [c2, c1].map(({ c }) => c.hex());
        };

        // When first mounted and then every time nowPlaying changes, update palette
        onMounted(updatePalette);
        watch(nowPlaying, updatePalette);

        const infoColor = computed(() => {
            const c1 = Color(palette.value[1], "hex");
            const c2 = Color(palette.value[0], "hex");

            const c = c1.mix(c2);

            const possibilities = [c.lightness(70), c.lighten(0.5), c.darken(0.5), Color("#fff", "hex")];
            const bestColor = possibilities.find((p) => p.contrast(c) >= 2) || Color("#000", "hex");

            console.log(bestColor.contrast(c));

            return bestColor.hex();
        });

        setInterval(() => {
            const first = trackHistory.value.shift();
            if (!first) return;
            trackHistory.value.push(first);
        }, 2500);

        return { nowPlaying, lastPlayed, nextPlayed, trackHistory, palette, textColor, infoColor };
    }
});
</script>

<style lang="postcss">
.color-bg {
    @apply h-full w-full;
    --start-color: v-bind("palette[0]");
    --end-color: v-bind("palette[1]");
    background: black;
}
.color-bg > * {
    z-index: 1;
}

.color-bg::after {
    @apply absolute h-full w-full z-0 opacity-75;
    content: "";

    animation: yes 5s linear infinite;

    transition: all 500ms ease;
    background: linear-gradient(0deg, var(--start-color), var(--end-color));
    /* background: black; */
}

@keyframes yes {
    0% {
        background-position: 0 0;
    }

    100% {
        background-position: 100% 0%;
    }
}
</style>
