<template>
  <Header />
  <!-- <Preloader /> -->
  <slot></slot>
  <Footer />
</template>
<script>
import Header from "./Header.vue";
import Footer from "./Footer.vue";
import Preloader from "../Components/Preloader.vue";
export default {

  components: {
    Header,
    Footer,
    Preloader,
  },
};
</script>
