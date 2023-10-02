<template>
  <section class="section padding-top-70 padding-bottom-0">
    <div class="container d-block overflow-hidden">
      <div class="hr"></div>
      <div class="col-lg-12">
        <div class="mt-5">
          <h2 class="section-title text-center">{{ title?.title }}</h2>
        </div>
        <div class="row mt-5">
          <Swiper
            class="pt-3"
            :autoplay="{
              delay: 1500,
              disableOnInteraction: false,
            }"
            :scrollbar="false"
            :slidesPerView="'auto'"
            :spaceBetween="20"
            :loop="true"
            :pagination="{
              clickable: true,
            }"
            :modules="modules"
            :breakpoints="swiperOptions.breakpoints"
          >
            <SwiperSlide
              v-for="(item, index) in images"
              :key="index"
              class="col-lg-3 col-md-6 d-flex align-items-stretch"
            >
              <div class="icon-box referances-slider-item">
                <div class="referances-icon">
                  <div>
                    <img
                      class="custom-logo-img img-fluid"
                      :src="item?.img_url"
                    />
                    <h6 class="text-center" style="padding-top: 1rem">
                      <Link
                        style="color: black"
                        :href="route('references-inner.index')"
                        >{{ item?.title }}</Link
                      >
                    </h6>
                  </div>
                </div>
              </div>
            </SwiperSlide>
          </Swiper>
        </div>
      </div>
    </div>
  </section>
</template>

  <script>
import axios from "axios";
import Layout from "../Shared/Layout.vue";
import { Swiper, SwiperSlide } from "swiper/vue";
import { Autoplay } from "swiper/modules";
import "swiper/css";

export default {
  components: {
    Layout,
    Swiper,
    SwiperSlide,
  },
  data() {
    return {
      images: {},
      title: {},
    };
  },
  mounted() {
    this.getData();
  },
  methods: {
    async getData() {
      axios
        .get(route("references.data"))
        .then((response) => {
          this.images = response.data.images;
          this.title = response.data.title;
        })
        .catch((error) => {
          console.error(error);
        });
    },
  },
  setup() {
    return {
      modules: [Autoplay],
      swiperOptions: {
        breakpoints: {
          300: {
            slidesPerView: "auto",
            spaceBetween: 10,
          },
          768: {
            slidesPerView: "auto",
            spaceBetween: 10,
          },
          992: {
            slidesPerView: "auto",
            spaceBetween: 40,
          },
        },
      },
    };
  },
};
</script>

  <style scoped>
.custom-slide-img {
  border-radius: 10px;
  max-height: 500px;
}
.Swiper {
  margin-top: 3rem;
  /* max-height: 500px !important; */
}

.icon-box {
  /* width: 100% !important; */
  margin-bottom: 16px;
  padding: 2rem;
  transition: all ease-in-out 0.4s;
  min-width: 285px;
  text-align: center;
}
.icon-box:hover {
  transform: translateY(-10px);
}

.custom-logo-img {
  max-height: 100px;
  min-height: 100px;
}
.referances-slider-item {
  display: flex;
  align-content: center;
  justify-content: center;
  flex-wrap: wrap;
  border: #2186c2 solid 4px;
  border-radius: 20px;
  background: #f5f5f5;
}
@media (max-width: 1200px) {
  .icon-box {
    min-width: 250px;
  }
}
</style>
