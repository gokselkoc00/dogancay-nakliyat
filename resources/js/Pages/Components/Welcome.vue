<template>
  <div class="welcome-area" id="welcome" :style="{ backgroundImage: `url(${img_url})` }">
    <!-- ***** Header Text Start ***** -->
    <div class="header-text">
      <div class="container">
        <div class="row">
          <div
            class="offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12"
          >

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
      img_url:""
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
            this.img_url = response.data;
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
.main-button-slider:hover{
    background: #13547a !important;
}

.welcome-area{
    height: 80vh;
}
</style>
