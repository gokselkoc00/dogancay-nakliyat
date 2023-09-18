import { createApp, h } from 'vue';
import { InertiaProgress } from '@inertiajs/progress';
import { createInertiaApp } from '@inertiajs/vue3';
import { resolvePageComponent } from 'laravel-vite-plugin/inertia-helpers';
import { Link, Head } from "@inertiajs/vue3";

InertiaProgress.init()

createInertiaApp({
    resolve: (name) => resolvePageComponent(`./Pages/${name}.vue`, import.meta.glob('./Pages/**/*.vue')),
    setup({ el, App, props, plugin }) {
        return createApp({ render: () => h(App, props) })
            .mixin({ methods: { route } })
            .use(plugin)
            .component("Link", Link)
            .component("Head", Head)
            .mount(el)
    },
    title: title => `${title} - Doğançay Nakliyat`

});
