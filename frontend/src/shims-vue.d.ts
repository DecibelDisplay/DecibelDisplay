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

declare module "*.svg" {
    // It's really a string, precisely a resolved path pointing to the image file
    const filePath: string;

    export default filePath;
}

declare module "vue-svg-inline-plugin" {
    import { App } from "vue";

    interface VueSvgInlinePluginOptions {
        directive?: {
            name?: string;
            spriteModifierName?: string;
        };
        attributes?: {
            merge?: string[];
            add?: { name: string; value: string | number }[];
            data?: string[];
            remove?: string[];
        };
        cache?: {
            version?: string;
            persistent?: boolean;
            removeRevisions?: boolean;
        };
        intersectionObserverOptions?: any;
        axios?: any;
        xhtml?: boolean;
    }

    type InstallFunction = (app: App, options?: VueSvgInlinePluginOptions) => any;
    type VueSvgInlinePlugin = (InstallFunction & { install?: InstallFunction }) | { install: InstallFunction };

    const _default: VueSvgInlinePlugin;

    export { VueSvgInlinePluginOptions };
    export default _default;
}
