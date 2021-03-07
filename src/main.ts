import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import "@/assets/css/tailwind.css";

import VueSvgInlinePlugin from "vue-svg-inline-plugin";

createApp(App).use(store).use(router).use(VueSvgInlinePlugin).mount("#app");
