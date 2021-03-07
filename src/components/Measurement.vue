<template>
    <figure class="flex items-center">
        <img v-svg-inline :src="logo" class="h-8 fill-current" />
        <figcaption class="pl-2 text-xl">{{ title }}</figcaption>
    </figure>
</template>

<script lang="typescript">
import { computed, defineComponent, onMounted, ref, watch } from "vue";

export default defineComponent({
    name: "Measurement",
    props: {
        logo: String,
        title: String
    },
    setup() {
        //
    }
});
</script>
