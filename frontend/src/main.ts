import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import TrackModule, {DBusTrack} from "./store/track";
import SensorModule from "./store/sensor";
import "@/assets/css/tailwind.css";

import VueSvgInlinePlugin from "vue-svg-inline-plugin";

import { ipcRenderer } from 'electron'
import { getModule } from "vuex-module-decorators";
(<any>window).ipcRenderer = ipcRenderer

createApp(App).use(store).use(router).use(VueSvgInlinePlugin).mount("#app");

type IncomingArg = {
    category: string;
} & (
    | { cmd: "Track", data: DBusTrack }
    | { cmd: "Position", data: number }
    | { cmd: "Status", data: "paused" | "playing" }
    | { cmd: "sensor", data: any }
);

ipcRenderer.on("data", (event, arg: IncomingArg) => {
    console.log(`Got arg: ${arg}`);
    const trackStore = getModule(TrackModule);
    const sensorModule = getModule(SensorModule);
    if (arg.cmd === "Track") {
        trackStore.addNewTrack(arg.data);
    } else if (arg.cmd === "Position") {
        trackStore.updateCurrentTrackTime(arg.data);
    } else if (arg.cmd === "Status") {
        trackStore.setPlayingStatus(arg.data);
    } else if (arg.cmd === "sensor") {
        sensorModule.setSensorValues(arg.data);
    }
});