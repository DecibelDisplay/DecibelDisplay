import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import TrackModule, {DBusTrack} from "./store/track";
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
);

ipcRenderer.on("trackUpdate", (event, arg: IncomingArg) => {
    console.log(`Got arg: ${arg}`);
    const trackStore = getModule(TrackModule);
    if (arg.cmd === "Track") {
        trackStore.addNewTrack(arg.data);
    }
});