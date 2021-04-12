<template>
    <header class="grid grid-rows-2 items-center justify-center mt-16 text-other">
        <div class="text-center">
            <h1 class="font-heading text-3xl">Good {{ timeOfDay }}!</h1>
            <strong class="block font-heading text-6xl mt-6">{{ timeStr }}</strong>
        </div>

        <ul class="flex space-x-4">
            <li><Measurement title="68° / 43°" :logo="temperatureLogo" /></li>
            <li><Measurement title="47%" :logo="humidityLogo" /></li>
            <li><Measurement title="30.41 inHg" :logo="pressureLogo" /></li>
        </ul>
    </header>
</template>

<script lang="ts">
import { defineComponent, ref, computed } from "vue";
import Measurement from "@/components/Measurement.vue";
import temperatureLogo from "@/assets/svg/temperature.svg";
import humidityLogo from "@/assets/svg/humidity.svg";
import pressureLogo from "@/assets/svg/pressure.svg";
import dayjs from "dayjs";

export default defineComponent({
    components: { Measurement },
    props: {
        color: String
    },
    setup() {
        const currentTime = ref(Date.now());

        setInterval(() => {
            currentTime.value = Date.now();
        }, 1000);

        const timeStr = computed(() => dayjs(currentTime.value).format("h:mm A"));

        const timeOfDay = computed(() => {
            const hours = dayjs(currentTime.value).get("hour");
            if (hours >= 6 && hours < 12) return "morning";
            if (hours > 12 && hours <= 17) return "afternoon";
            if (hours > 17 && hours <= 22) return "evening";
            return "night";
        });

        return { temperatureLogo, humidityLogo, pressureLogo, timeStr, timeOfDay };
    }
});
</script>

<style lang="postcss">
.text-other {
    color: v-bind("color");
}
</style>
