import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import "@/assets/css/tailwind.css";

import VueSvgInlinePlugin from "vue-svg-inline-plugin";

import { ipcRenderer } from 'electron'
(<any>window).ipcRenderer = ipcRenderer

createApp(App).use(store).use(router).use(VueSvgInlinePlugin).mount("#app");

ipcRenderer.on("trackUpdate", (event, arg: Record<string, string>) => {
    console.log("trackUpdate", arg);
});