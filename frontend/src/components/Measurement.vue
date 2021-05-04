<template>
    <figure class="flex items-center">
        <svg v-if="logo === 'humidity'" class="logo" xmlns="http://www.w3.org/2000/svg" viewBox="-5 -2 24 24" preserveAspectRatio="xMinYMin">
            <path
                d="M2 13a5 5 0 0010 0c0-1.726-1.66-5.031-5-9.653C3.66 7.969 2 11.274 2 13zM7 0c4.667 6.09 7 10.423 7 13a7 7 0 01-14 0c0-2.577 2.333-6.91 7-13z"
            />
        </svg>
        <svg v-else-if="logo === 'pressure'" class="logo" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
            <defs>
                <clipPath clipPathUnits="userSpaceOnUse" id="a">
                    <circle cx="258.53967" cy="253.96825" r="215.36508" fill="#fff" stroke="#0eb4ff" stroke-width=".1" stroke-linejoin="round" />
                </clipPath>
            </defs>
            <path
                d="M437.019 74.981C388.667 26.629 324.38 0 256 0S123.333 26.629 74.981 74.981C26.629 123.333 0 187.62 0 256s26.629 132.667 74.981 181.019C123.333 485.371 187.62 512 256 512s132.667-26.629 181.019-74.981C485.371 388.667 512 324.38 512 256s-26.629-132.667-74.981-181.019zM256 477.867c-122.337 0-221.867-99.529-221.867-221.867S133.663 34.133 256 34.133 477.867 133.663 477.867 256 378.337 477.867 256 477.867z"
                clip-path="url(#a)"
            />
            <path
                d="M256 56.889C146.21 56.889 56.889 146.21 56.889 256S146.21 455.111 256 455.111 455.111 365.79 455.111 256 365.79 56.889 256 56.889zm0 34.133c85.207 0 155.532 64.931 164.099 147.911h-97.255l18.342-45.941c2.53-6.336 1.042-13.57-3.781-18.396-4.825-4.823-12.059-6.311-18.396-3.783l-73.618 29.385c-16.858 6.721-28.386 21.725-31.396 38.734H91.901c8.567-82.979 78.892-147.91 164.099-147.91zm38.748 126.228l-12.818 32.107v.001l-.133.333c-2.345 5.894-6.712 13.243-14.201 14.788-5.19 1.064-11.315-.867-15.262-4.812-2.245-2.243-3.755-4.87-4.491-7.815-1.754-7.001 1.22-16.372 10.195-19.949l36.71-14.653zM256 420.978c-85.207 0-155.532-64.931-164.099-147.911h128.067c2.241 3.892 4.999 7.508 8.228 10.738 9.706 9.705 23.043 15.101 36.44 15.101 3.297 0 6.601-.327 9.852-.998 13.981-2.883 25.64-11.573 33.686-24.841h111.924c-8.566 82.98-78.891 147.911-164.098 147.911z"
            />
        </svg>
        <svg v-else class="logo" xmlns="http://www.w3.org/2000/svg" viewBox="-7 -2 24 24" preserveAspectRatio="xMinYMin">
            <path
                d="M10 15a5 5 0 11-8-4V3a3 3 0 116 0v8c1.214.912 2 2.364 2 4zm-3.201-2.401l-.799-.6V3a1 1 0 10-2 0v8.999l-.799.6a3 3 0 103.598 0zM5 17a2 2 0 110-4 2 2 0 010 4z"
            />
        </svg>

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
    setup(ctx) {
        return { logourl: `url("${ctx.logo}")` };
    }
});
</script>

<style lang="postcss" scoped>
.logo {
    @apply h-7 fill-current;
}
</style>