<template>
  <Head title="Anasayfa"></Head>
  <Layout>
    <Welcome />
    <FeaturesCards />
    <Features />
    <Counter />
    <Blog />
    <Contact :errors="errors"/>
  </Layout>
</template>

<script>
import Layout from "./Shared/Layout.vue";
import Welcome from "./Components/Welcome.vue";
import FeaturesCards from "./Components/FeaturesCards.vue";
import Features from "./Components/Features.vue";
import Counter from "./Components/Counter.vue";
import Blog from "./Components/Blog.vue";
import Contact from "./Components/Contact.vue";
export default {
  props: {
    errors: Object,
  },
  components: {
    Layout,
    Welcome,
    FeaturesCards,
    Features,
    Counter,
    Blog,
    Contact,
  },
};
</script>
