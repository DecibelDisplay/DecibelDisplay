<template>
    <div class="h-screen flex flex-col justify-center color-bg">
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
    </div>
</template>

<script lang="ts">
import { computed, defineComponent, onMounted, ref, watch } from "vue";
import TrackCard from "@/components/TrackCard.vue"; // @ is an alias to /src
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
        TrackCard
    },
    setup() {
        const trackHistory = ref([
            {
                artist: "Twenty One Pilots",
                track: "Jumpsuit",
                album: "Trench",
                // albumArt: "https://images-na.ssl-images-amazon.com/images/I/7103AD5YBlL._SL1425_.jpg"
                albumArt: "https://images-na.ssl-images-amazon.com/images/I/81ucF7MxoeL._SL1441_.jpg"
            },
            {
                artist: "Glass Animals",
                track: "Tokyo Drifting",
                album: "Dreamland",
                albumArt: "https://i.imgur.com/bjqU71S.png"
            },
            {
                artist: "Starset",
                track: "Antigravity",
                album: "Transmissions",
                albumArt: "https://upload.wikimedia.org/wikipedia/en/e/e9/Starset_Transmissions.jpg"
            }
        ] as Track[]);

        const nowPlaying = computed(() => trackHistory.value[trackHistory.value.length - 1]);
        const lastPlayed = computed(() => trackHistory.value[trackHistory.value.length - 2]);
        const nextPlayed = computed(() => trackHistory.value[trackHistory.value.length - 3]);

        /* Calculate colors of current album art */
        const palette = ref([] as string[]);
        const textColor = ref("white"); // TODO: set dynamically

        const updatePalette = async () => {
            // Get a palette of most prominent colors
            const res = (await prominent(nowPlaying.value.albumArt, { format: "rgb", group: 50, amount: 5 })) as number[][];

            // Convert colors to LAB format
            const colors = res.map((c) => Color.rgb(c));
            const colorsLab = colors.map((c) => ({ c, lab: { L: c.l(), A: c.a(), B: c.b() } }));

            // One color will be most prominent
            const c1 = colorsLab.shift();
            if (!c1) return;

            // Second color will be most "different" color
            const diffs = colorsLab.map((c) => ({ c, delta: deltaE.getDeltaE00(c1.lab, c.lab) })).sort((a, b) => b.delta - a.delta);
            const c2 = diffs[2].c;

            palette.value = [c1, c2].map(({ c }) => c.hex());
        };

        // When first mounted and then every time nowPlaying changes, update palette
        onMounted(updatePalette);
        watch(nowPlaying, updatePalette);

        return { nowPlaying, lastPlayed, nextPlayed, trackHistory, palette, textColor };
    }
});
</script>

<style lang="postcss">
.color-bg {
    @apply h-full w-full;
    background: black;
}
.color-bg > * {
    z-index: 1;
}

.color-bg::after {
    @apply absolute h-full w-full z-0 opacity-75;
    content: "";
    --start-color: v-bind("palette[0]");
    --end-color: v-bind("palette[1]");
    background: conic-gradient(from -90deg at 50% 50%, var(--start-color) 0deg, var(--end-color) 180deg, var(--start-color) 360deg), #000000;
}
</style>
