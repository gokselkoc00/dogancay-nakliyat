<template>
  <section class="section home-feature">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <!-- ***** Features Small Item Start ***** -->
            <div
              class="col-lg-4 col-md-6 col-sm-6 col-12"
              data-scroll-reveal="enter bottom move 50px over 0.6s after 0.2s"
              v-for="item in data"
              :key="item.id"
              style="pointer-events: none;"
            >
              <div class="features-small-item">
                <div class="icon">
                  <i><img class="img-fluid" :src="item.img_url" alt="" /></i>
                </div>
                <h5 class="features-title">{{ item.title }}</h5>
                <p>
                  {{ item.text }}
                </p>
              </div>
            </div>
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
          .get(route("features-card.data"))
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

<style scoped>
.img-fluid{
    max-height: 3rem;
}
</style>
