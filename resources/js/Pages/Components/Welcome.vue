<template>
  <div class="welcome-area" id="welcome">
    <!-- ***** Header Text Start ***** -->
    <div class="header-text">
      <div class="container">
        <div class="row">
          <div
            class="offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12"
          >
            <h1>
              {{ data.title }} <strong></strong
              ><br /><strong></strong>
            </h1>
            <p></p>
            <a :href="data?.button?.url" class="main-button-slider">{{ data?.button?.title}}</a>
          </div>
        </div>
      </div>
    </div>
  </div>
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
          .get(route('welcome.data'))
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
