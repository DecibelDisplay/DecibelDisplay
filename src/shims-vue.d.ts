/* eslint-disable */
declare module "*.vue" {
    import type { DefineComponent } from "vue";
    const component: DefineComponent<{}, {}, any>;
    export default component;
}

declare module "delta-e" {
    interface LAB {
        L: number;
        A: number;
        B: number;
    }
    export default {
        getDeltaE76(c1: LAB, c2: LAB): number {},
        getDeltaE94(c1: LAB, c2: LAB): number {},
        getDeltaE00(c1: LAB, c2: LAB): number {}
    };
}
