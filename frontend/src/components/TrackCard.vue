<template>
    <figure class="flex flex-col items-center text-center">
        <img :src="albumArt" class="mx-auto w-auto h-full shadow-2xl" />
        <figcaption v-if="!hideInfo" class="mt-4">
            <h1 class="font-bold text-2xl">{{ track }}</h1>
            <h2 class="text-xl">{{ artist }} - {{ album }}</h2>
        </figcaption>
    </figure>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
    props: {
        track: String,
        artist: String,
        album: String,
        albumArt: String,
        hideInfo: Boolean
    },
    setup() {
        //
    }
});
</script>
