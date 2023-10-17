<template>
    <Head title="Anasayfa"></Head>
    <Layout>
        <Welcome />
        <FeaturesCards />
        <AboutUs />
        <Features />
        <Blog />
        <Gallery />
        <References />
        <Contact :errors="errors" />
    </Layout>
</template>

<script>
import Layout from "./Shared/Layout.vue";
import Welcome from "./Components/Welcome.vue";
import AboutUs from "./Components/AboutUs.vue";
import FeaturesCards from "./Components/FeaturesCards.vue";
import Features from "./Components/Features.vue";
import Counter from "./Components/Counter.vue";
import Blog from "./Components/Blog.vue";
import Gallery from "./Components/Gallery.vue";
import References from "./Components/References.vue";
import Contact from "./Components/Contact.vue";
export default {
    props: {
        errors: Object,
    },
    components: {
        Layout,
        Welcome,
        AboutUs,
        FeaturesCards,
        Features,
        Counter,
        Blog,
        Gallery,
        References,
        Contact,
    },
};
</script>
