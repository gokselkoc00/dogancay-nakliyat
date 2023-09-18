<template>
  <Head title="Taşınma Kontrol Listesi"></Head>
  <Layout>
    <div>
      <div id="carouselExampleCaptions" class="carousel slide">
        <div class="carousel-indicators"></div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img
              :src="$page.props.site_url + data?.hero"
              class="d-block w-100"
              alt="..."
              height="713"
            />
            <div class="custom-carousel-caption d-none d-md-block">
              <h5></h5>
              <div class="row">
                <div
                  class="offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12"
                >
                  <h1>{{ data?.title }}</h1>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="container">
        <div class="row mt-5 mb-5">
          <!-- Image on the left -->
          <div class="col-lg-4 mb-4">
            <div>
              <div class="frame">
                <img
                  class="custom-img img-fluid"
                  :src="$page.props.site_url + data?.img_url"
                />
              </div>
            </div>
          </div>
          <!-- Cards on the right -->
          <div class="col-lg-8">
            <div class="row">
              <div
                class="col-md-6 mb-4"
                v-for="item in data.data"
                :key="item.id"
              >
                <div class="custom-card">
                  <div class="card-body align-self-center">
                    <h3 class="card-title">{{ item.title }}</h3>
                    <p class="card-text mb-0">{{ item.text }}</p>
                  </div>
                </div>
              </div>
            </div>
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
          .get(route("tasinma-kontrol-lis.data"))
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
.custom-card {
  background: rgba(211, 208, 208, 0.107);
  border-radius: 20px;
  /* min-height: 400px; */
  top: 0;
  box-sizing: border-box;
  padding: 0px !important;
  margin-left: 1rem;
}
.custom-card h3 {
  font-size: 1.2rem;
  font-weight: 700;
}

.custom-img {
  border-radius: 20px;
  background-size: cover;
}

@media (max-width: 992px) {
  .custom-img {
    display: none;
  }
}
@media (max-width: 768px) {
  .custom-card {
    min-height: 250px;
  }
}
</style>
