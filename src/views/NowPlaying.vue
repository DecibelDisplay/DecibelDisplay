<template>
    <div>
        <ol class="flex justify-center items-center">
            <TrackCard
                class="h-52 opacity-75 -mr-16"
                artist="Starset"
                track="Antigravity"
                album="Transmissions"
                albumArt="https://upload.wikimedia.org/wikipedia/en/e/e9/Starset_Transmissions.jpg"
                hide-info
            />
            <TrackCard
                class="h-64 z-10"
                artist="Starset"
                track="Antigravity"
                album="Transmissions"
                albumArt="https://upload.wikimedia.org/wikipedia/en/e/e9/Starset_Transmissions.jpg"
            />
            <TrackCard
                class="h-52 opacity-75 -ml-16"
                artist="Starset"
                track="Antigravity"
                album="Transmissions"
                albumArt="https://upload.wikimedia.org/wikipedia/en/e/e9/Starset_Transmissions.jpg"
                hide-info
            />
        </ol>
    </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import TrackCard from "@/components/TrackCard.vue"; // @ is an alias to /src

export default defineComponent({
    name: "NowPlaying",
    components: {
        TrackCard
    }
});
</script>
