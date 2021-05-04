<template>
    <header class="grid grid-rows-2 items-center justify-center text-other">
        <div class="text-center">
            <h1 class="font-heading text-3xl">Good {{ timeOfDay }}!</h1>
            <strong class="block font-heading text-6xl mt-6">{{ timeStr }}</strong>
        </div>

        <ul class="flex space-x-4">
            <li><Measurement :title="temp" logo="temperature" /></li>
            <li><Measurement :title="hum" logo="humidity" /></li>
            <li><Measurement :title="pres" logo="pressure" /></li>
        </ul>
    </header>
</template>

<script lang="ts">
import { defineComponent, ref, computed } from "vue";
import { getModule } from "vuex-module-decorators";
import SensorModule from "@/store/sensor";
import Measurement from "@/components/Measurement.vue";
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

        const sensorStore = getModule(SensorModule);
        const temp = computed(() => sensorStore.temperature.toFixed(1) + " °F");
        const hum = computed(() => sensorStore.humidity.toFixed(1) + "%");
        const pres = computed(() => sensorStore.pressure.toFixed(1) + " inHg");

        return { timeStr, timeOfDay, temp, hum, pres };
    }
});
</script>

<style lang="postcss">
.text-other {
    color: v-bind("color");
}
</style>
