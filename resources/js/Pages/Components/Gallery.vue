<template>
    <section class="section padding-top-70 padding-bottom-0">
        <div class="container d-block overflow-hidden">
            <div class="hr"></div>
            <div class="row mt-5 text-center">
                <div class="col-md-12 col-lg-5 mt-5" data-aos="fade-right" data-aos-duration="3000">
                    <h2 class="c-h2-title">{{ title?.title }}</h2>
                    <p class="mt-3 text-left">{{ title?.text }}</p>
                </div>
                <Swiper :autoplay="{
                          delay: 15000,
                          disableOnInteraction: false,
                        }"
                        :navigation="true"
                        :loop="true"
                        :pagination="{
                          clickable: true,
                        }" :modules="modules" class="Swiper col-md-12 col-lg-7" data-aos="fade-left"
                    data-aos-duration="3000">
                    <SwiperSlide v-for="item in images" :key="item.id"><img class="img-fluid custom-slide-img"
                            :src="item.img_url" /></SwiperSlide>
                </Swiper>
            </div>
        </div>
    </section>
</template>

<script>
import Layout from "../Shared/Layout.vue";
import { Autoplay, Navigation } from "swiper/modules";
import { Swiper, SwiperSlide } from "swiper/vue";
import "swiper/css";
import "swiper/css/navigation";

import axios from "axios";

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
                .get(route("gallery.data"))
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
            modules: [Autoplay, Navigation],
        };
    },
};
</script>

<style>
.custom-slide-img {
    border-radius: 10px;
    max-height: 500px;
    min-height: 500px;
}

.Swiper {
    max-height: 500px;
    margin-top: 3rem;
    /* max-height: 500px !important; */
}
</style>
