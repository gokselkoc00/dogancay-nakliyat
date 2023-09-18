<template>
  <section class="testimonials" id="testimonials">
    <div class="container">
      <div class="row mt-5">
        <div class="col-lg-12">
          <div class="center-heading">
            <h2 class="section-title">
              {{ data.title }}
            </h2>
          </div>
        </div>
        <div class="offset-lg-3 col-lg-6">
          <div class="center-text">
            <p>
              {{ data.text }}
            </p>
          </div>
        </div>
      </div>
      <!-- ***** Section Title End ***** -->

      <div class="row">
        <div
          class="col-lg-4 col-md-6 col-sm-12"
          v-for="(item, index) in data.data"
          :key="index"
        >
          <div class="blog-post-thumb">
            <div class="img">
              <img class="img-fluid custom-img" :src="item.img_url" alt="" />
            </div>
            <div class="blog-content">
              <h3>
                <a href="#">{{ item.title }}</a>
              </h3>
              <div class="text">
                {{ item.text }}
              </div>
            </div>
            <a :href="item.url" class="main-button" target="_blank">{{
              data.btn_text
            }}</a>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>


<script>
import axios from "axios";

export default {
  data() {
    return {
      data: {},
    };
  },
  mounted() {
    this.getData();
  },
  methods: {
    async getData() {
      try {
        axios
          .get(route("blog.data"))
          .then((response) => {
            this.data = response.data;
          })
          .catch((error) => {
            console.error(error);
          });
      } catch (error) {
        console.error(error);
      }
    },
  },
};
</script>

<style>
.custom-img {
  max-height: 14rem;
  min-height: 12.5rem;
}
</style>
