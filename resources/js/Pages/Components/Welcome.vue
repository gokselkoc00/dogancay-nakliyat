<template>
    <div class="container-fluid" style="padding-left: 0px !important; padding-right: 0px !important;" id="">
        <!-- ***** Header Text Start ***** -->
        <Swiper :autoplay="{
            delay: 4000,
            disableOnInteraction: true,
        }" :loop="true" :pagination="{ clickable: true, }" :modules="modules" class=" col-md-12 col-lg-12">
            <SwiperSlide v-for="(item, index) in data" :key="index">

                <div class="slider-content">

                    <h1>{{ item?.title }}</h1>
                    <Transition name="slider-content">

                    <p class="mt-1">{{ item?.text }}</p>
                </Transition>

                </div>
                <!-- Slider Resim Boyutları 1903 x 575 px olmalı-->
                <img class="img-fluid" style="width: 100%; max-height: 575px;" :src="item?.img_url">
            </SwiperSlide>
            <!-- <SwiperSlide v-for="item in images" :key="item.id"><img class="img-fluid custom-slide-img"
                                        :src="item.img_url" /></SwiperSlide> -->
        </Swiper>
    </div>
</template>



<script>
import axios from "axios";
import { Autoplay, Pagination } from "swiper/modules";
import { Swiper, SwiperSlide } from "swiper/vue";
import "swiper/css";
import "swiper/css/pagination";

export default {
    components: {
        Swiper,
        SwiperSlide,
    },
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
                        this.data = response.data.data;
                    })
                    .catch((error) => {
                        console.error(error);
                    });
            } catch (error) {
                console.error(error);
            }
        },
    },
    setup() {
        return {
            modules: [Autoplay, Pagination],
        };
    },
};
</script>

<style scoped>
.slider-content-enter-active,
.slider-content-leave-active {
    transition: all 1s ease-out !important;
}

.slider-content-enter-from,
.slider-content-leave-to {
    opacity: 0;
    transform: translateX(-100%) !important;
}

.slider-content {
    position: absolute;
    width: 25%;
    bottom: 20px;
    /* İstenilen alt boşluk miktarını ayarlayın */
    left: 230px;
    /* İstenilen sol boşluk miktarını ayarlayın */
    color: white;
    /* Yazı rengini ayarlayın */
    z-index: 1;
    /* Gerekirse diğer öğelerin önüne geçmek için z-index ekleyin */

}

.main-button-slider:hover {
    background: #13547a !important;
}

.welcome-area {
    height: 80vh;
}
</style>
