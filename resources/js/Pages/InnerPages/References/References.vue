<template>
  <Head title="Hakkımızda"></Head>
  <Layout>
    <div class="row">
            <img style="max-height: 400px; width: 100%;" :src="heroImage" class="img-fluid">

        </div>
    <div class="container">
      <div
        class="row"
        style="padding-top: 80px; padding-bottom: 70px; text-align: center"
      >
        <div class=" col-md-12 col-lg-12">
          <h1>
            {{ title?.title }}
          </h1>
          <p class="mt-5">{{ title?.text }}</p>
        </div>
        <div class="row w-100 mt-5" style="margin-left: 0px; margin-right: 0px">
          <div
            v-for="(item, index) in images"
            :key="index"
            class="col-xl-3 col-lg-4 col-md-6 d-flex align-items-stretch"
          >
            <div class="icon-box referances-item"             style="width: 100%;"
>
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
      heroImage:""
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
            this.heroImage = response.data.heroImage;
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
    margin-bottom: 16px;
  padding: 2rem;
  transition: all ease-in-out 0.4s;
  min-width: 285px;
  text-align: center;
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
  border: #ccc solid 1px;
  border-radius: 4px;
}
</style>
