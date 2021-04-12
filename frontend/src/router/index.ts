import { createRouter, createWebHistory, createWebHashHistory, RouteRecordRaw } from "vue-router";
import NowPlaying from "../views/NowPlaying.vue";

const routes: Array<RouteRecordRaw> = [
    {
        path: "/",
        name: "NowPlaying",
        component: NowPlaying
    }
    // {
    //     path: "/about",
    //     name: "About",
    //     // route level code-splitting
    //     // this generates a separate chunk (about.[hash].js) for this route
    //     // which is lazy-loaded when the route is visited.
    //     component: () => import(/* webpackChunkName: "about" */ "../views/About.vue")
    // }
];

const router = createRouter({
    history: process.env.IS_ELECTRON ? createWebHashHistory() : createWebHistory(),
    routes
});

export default router;
