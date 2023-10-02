<template>
  <Head title="Hakkımızda"></Head>
  <Layout>
    <div class="container">
      <div
        class="row"
        style="padding-top: 180px; padding-bottom: 70px; text-align: center"
      >
        <div class="col-md-12 col-lg-12">
          <h1>
            {{ title?.title }}
          </h1>
          <p class="mt-5">{{ title?.text }}</p>
        </div>
        <div class="row w-100 mt-5" style="margin-left: 0px; margin-right: 0px">
          <div
            v-for="(item, index) in images"
            :key="index"
            class="col-xl-3 col-lg-3 col-md-6 d-flex"
          >
            <div class="icon-box referances-item">
              <div class="referances-icon">
                <div>
                  <img class="custom-logo-img img-fluid" :src="item?.img_url" />
                  <h6 class="text-center" style="padding-top: 1.5rem">
                    <Link
                      style="color: black;"
                      :href="route('references-inner.index')"
                      >{{ item?.title }}</Link
                    >
                  </h6>
                </div>
                <!-- <div class="row" style="padding-top: 1rem">

                  </div> -->
              </div>
            </div>
          </div>
        </div>
        <div class="row w-100 justify-content-center">
            <p class="mt-5" >{{ title?.text_footer }}</p>
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
      images: {},
      title: {},
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
          .get(route("references-inner.data"))
          .then((response) => {
            this.images = response.data.images;
            this.title = response.data.title;
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
@media (max-width: 992px) {
  .text-content {
    margin-top: 2rem;
  }
}

.icon-box {
  width: 100% !important;
  margin-bottom: 16px;
  padding: 2rem;
  transition: all ease-in-out .4s;
}
.icon-box:hover{
    transform: translateY(-10px);
}
.custom-logo-img {
  max-height: 100px;
  min-height: 100px;
}
.referances-item {
  display: flex;
  align-content: center;
  justify-content: center;
  flex-wrap: wrap;
  border: #2186c2 solid 3px;
  border-radius: 10px;
  background: #f5f5f5;
}
</style>
