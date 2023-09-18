<template>
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
          <ul class="social">
            <li v-for="(item, index) in footer" :key="index">
              <a :href="item.link"><i :class="item?.class"></i></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      footer: {},
    };
  },
  mounted() {
    // Sayfa yüklendiğinde veriyi çek
    this.getData();
  },
  methods: {
    async getData() {
      try {
        axios
          .get(route('footer.data'))
          .then((response) => {
            this.footer = response.data;
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
