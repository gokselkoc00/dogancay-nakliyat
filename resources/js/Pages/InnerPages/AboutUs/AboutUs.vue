<template>
  <Head title="Hakkımızda"></Head>
  <Layout>
    <div class="container">

      <div class="col-md-12 row" style="padding-top: 180px; padding-bottom: 70px;  text-align: center;">
        <div class="col-md-12 col-lg-6 " >
          <img class="img-fluid" style="border-radius: 10px;" :src="image" />
        </div>
        <div class="col-md-12 col-lg-6 text-content" style="padding-right: 0px;">
            <div>
                <h2>{{ data?.title }}</h2>
            </div>
            <div class="mt-4">
                <p style="text-align: left;">
                    {{ data?.text }}
                </p>
            </div>
        </div>
      </div>
    </div>
  </Layout>
</template>

<script>
import axios from "axios";
import Layout from "../../Shared/Layout.vue";

export default {
  data() {
    return {
      data: {},
      image: ""
    };
  },
  components: {
    Layout,
  },
  mounted() {
    this.getData();
  },
  methods: {
    async getData() {
      try {
        axios
          .get(route("aboutus-inner.data"))
          .then((response) => {
            this.data = response.data.data;
            this.image = response.data.image;
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

@media(max-width: 992px){
.text-content{
    margin-top: 2rem;
}
}
</style>
