<template>
    <div class="outer-bar">
        <p class="label label-start">{{ elapsedTime }}</p>
        <div class="inner-bar" :style="{ width: `${percent}%` }">
            <div class="scrubber"></div>
        </div>
        <p class="label label-end">{{ totalLength }}</p>
    </div>
</template>

<script lang="ts">
import TrackModule from "@/store/track";
import { getModule } from "vuex-module-decorators";
import { defineComponent, ref, computed } from "vue";
import dayjs from "dayjs";

const formatDuration = (ms: number) => new Date(ms).toISOString().substr(11, 8).replace(/^00:/, "");

export default defineComponent({
    setup() {
        const trackStore = getModule(TrackModule);
        const totalLength = computed(() => formatDuration(trackStore.currentTrack.duration));

        const elapsedTime = ref(formatDuration(0));
        const percent = ref(0);

        setInterval(() => {
            const elapsedMS = trackStore.playing ? Date.now() - trackStore.startedAt : trackStore.pausedTime;
            elapsedTime.value = formatDuration(elapsedMS);
            percent.value = 100 * elapsedMS / trackStore.currentTrack.duration;
        }, 100);

        return { totalLength, elapsedTime, percent };
    }
});
</script>

<style lang="postcss" scoped>
* {
    --bar-height: 0.7rem;
    --played-color: #ddd;
    --left-color: #aaa;
}
.outer-bar {
    @apply bg-gray-400 relative rounded-md;
    background-color: var(--left-color);
    height: var(--bar-height);
}
.inner-bar {
    @apply absolute left-0 rounded-l-md;
    background-color: var(--played-color);
    height: var(--bar-height);
}
.scrubber {
    @apply absolute top-1/2 right-0 w-2 transform translate-x-1/2 -translate-y-1/2;
    background-color: var(--played-color);
    height: calc(var(--bar-height) * 2);
}

.label {
    @apply absolute top-full pt-2 text-lg font-bold;
    color: var(--left-color);
}

.label-end {
    @apply right-0;
}
</style>
