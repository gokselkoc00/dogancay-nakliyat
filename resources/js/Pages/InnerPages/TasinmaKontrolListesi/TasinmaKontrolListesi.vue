<template>
  <Head title="Taşınma Kontrol Listesi"></Head>
  <Layout>
    <div class="container">
      <div class="row" style="margin-top: 180px">
        <div
          class="col-md-4"
          style="display: flex; align-items: center; justify-content: center"
        >
          <div class=" ">
            <Transition name="slide-title">
              <h5 class="header-title" v-if="data.data?.title">
                {{ data.data?.title }}
              </h5>
            </Transition>
          </div>
        </div>
        <div class="col-md-8">
          <transition name="slide-img">
            <img
              v-if="data?.hero"
              :src="$page.props.site_url + data.hero"
              class="img-fluid custom-hero-img"
              alt="..."
            />
          </transition>
        </div>
      </div>
      <div class="custom-carousel-caption d-none d-md-block mt-5"></div>
      <div class="container">
        <div class="row mt-5">
          <div class="d-block">
            <div class="text-center">
              <h2>{{ data.data?.check_list_title }}</h2>
            </div>
            <div class="mt-3">
              <ul class="list-group list-group">
                <transition-group name="bounce">
                  <li
                    class="mt-3"
                    style="border-radius: 30px"
                    v-for="(item, index) in data.data?.check_list"
                    :key="index"
                  >
                    <i
                      style="color: #a1a1a1; display: inline"
                      class="fa-solid fa-circle inline"
                    ></i>
                    <p style="display: inline; margin-left: 0.5rem">
                      {{ item?.text }}
                    </p>
                  </li>
                </transition-group>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="custom-carousel-caption d-none d-md-block mt-5"></div>

      <div class="container">
        <div class="row mt-5 mb-5">
          <!-- Image on the left -->
          <div
            class="col-lg-6 mb-4"
            style="display: flex; flex-direction: column"
          >
            <div>
              <div
                class="frame"
                v-for="(item, index) in data.images"
                :key="index"
              >
                <img
                  class="custom-img img-fluid"
                  :src="$page.props.site_url + item?.img_url"
                />
              </div>
            </div>
          </div>
          <!-- Cards on the right -->
          <div class="col-lg-6">
            <div class="row" style="margin-top: 1rem">
              <div
                class="col-md-12 mb-4"
                v-for="(item, index) in data.data?.data"
                :key="index"
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
.custom-hero-img {
  border-radius: 20px;
  display: block;
  width: 100%;
}
.header-title {
  padding-top: 2rem;
  padding-bottom: 2rem;
  border-top: 3px solid #47b2e4 !important;
  border-bottom: 3px solid #47b2e4 !important;
}
.custom-img {
  margin-top: 1rem;
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
.bounce-enter-active {
  animation: bounce-in 2.5s;
}
.bounce-leave-active {
  animation: bounce-in 2.5s reverse;
}
@keyframes bounce-in {
  0% {
    transform: scale(0);
  }
  50% {
    transform: scale(1);
  }
  100% {
    transform: scale(1);
  }
}
</style>
