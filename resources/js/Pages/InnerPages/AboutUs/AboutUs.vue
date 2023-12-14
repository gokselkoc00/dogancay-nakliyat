<template>
    <Head title="Hakkımızda"></Head>
    <Layout>
        <div class="row">
            <img style="max-height: 400px; width: 100%" :src="hero" class="img-fluid" />
        </div>

        <div class="container">
            <div class="row mt-5">
                <div class="col-md-12" style="
                        display: flex;
                        align-items: center;
                        justify-content: center;
                    ">
                    <div class=" ">
                        <Transition name="slide-title">
                            <h1 class="header-title" v-if="data?.head_title">
                                {{ data?.head_title }}
                            </h1>
                        </Transition>
                    </div>
                </div>
            </div>
            <div class="custom-carousel-caption d-none d-md-block mt-5"></div>
            <div class="col-md-12 row" style="
                    padding-top: 80px;
                    padding-bottom: 70px;
                    text-align: center;
                ">
                <div class="row">
                    <div class="col-md-12 d-flex justify-content-center" data-aos="fade-down" data-aos-duration="3000">
                        <h2 class="c-h2-title">{{ data?.title }}</h2>
                    </div>
                    <div class="col-md-12 col-lg-6" style="
                            display: flex;
                            justify-content: center;
                            align-items: center;
                        " data-aos="fade-right" data-aos-duration="3000">
                        <img class="img-fluid w-100" style="border-radius: 3px" :src="image" />
                    </div>
                    <div class="col-md-12 col-lg-6 text-content" style="padding-right: 0px" data-aos="fade-left"
                        data-aos-duration="3000">
                        <div class="mt-4">
                            <p style="text-align: left">
                                {{ data?.text }}
                            </p>
                        </div>
                    </div>


                    <!-- Misyon -->
                    <div class="col-md-12 mt-5">
                        <div class="custom-carousel-caption d-none d-md-block mt-5"></div>

                        <div class="col-12 mt-5">
                            <h2 class="c-h2-title" data-aos="fade-up" data-aos-duration="3000">
                                {{ data?.misyon_title }}
                            </h2>
                        </div>
                        <div class="col-md-12 col-lg-12 text-content" style="padding-right: 0px" data-aos="fade-left"
                            data-aos-duration="3000">
                            <div class="mt-4">
                                <p style="text-align: left">
                                    {{ data?.misyon }}
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- Vizyon -->
                    <div class="col-md-12 mt-5">
                        <div class="custom-carousel-caption d-none d-md-block mt-5"></div>

                        <div class="col-12 mt-5">
                            <h2 class="c-h2-title" data-aos="fade-up" data-aos-duration="3000">
                                {{ data?.vizyon_title }}
                            </h2>
                        </div>
                        <div class="col-md-12 col-lg-12 text-content" style="padding-right: 0px" data-aos="fade-left"
                            data-aos-duration="3000">
                            <div class="mt-4">
                                <p style="text-align: left">
                                    {{ data?.vizyon }}
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- Hedeflerimiz -->
                    <div class="col-md-12 mt-5">
                        <div class="custom-carousel-caption d-none d-md-block mt-5"></div>

                        <div class="col-12 mt-5">
                            <h2 class="c-h2-title" data-aos="fade-up" data-aos-duration="3000">
                                {{ data?.hedeflerimiz_title }}
                            </h2>
                        </div>
                        <div class="col-md-12 col-lg-12 text-content" style="padding-right: 0px" data-aos="fade-left"
                            data-aos-duration="3000">
                            <div class="mt-4">
                                <p style="text-align: left">
                                    {{ data?.hedeflerimiz }}
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- Kalite Yönetimi -->
                    <div class="col-md-12 mt-5">
                        <div class="custom-carousel-caption d-none d-md-block mt-5"></div>

                        <div class="col-12 mt-5">
                            <h2 class="c-h2-title" data-aos="fade-up" data-aos-duration="3000">
                                {{ data?.kalite_yonetimi_title }}
                            </h2>
                        </div>
                        <div class="col-md-12 col-lg-12 text-content" style="padding-right: 0px" data-aos="fade-left"
                            data-aos-duration="3000">
                            <div class="mt-4">
                                <p style="text-align: left">
                                    {{ data?.kalite_yonetimi }}
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- Çevre Politikası -->
                    <div class="col-md-12 mt-5">
                        <div class="custom-carousel-caption d-none d-md-block mt-5"></div>

                        <div class="col-12 mt-5">
                            <h2 class="c-h2-title" data-aos="fade-up" data-aos-duration="3000">
                                {{ data?.cevre_politikasi_title }}
                            </h2>
                        </div>
                        <div class="col-md-12 col-lg-12 text-content" style="padding-right: 0px" data-aos="fade-left"
                            data-aos-duration="3000">
                            <div class="mt-4">
                                <p style="text-align: left" :v-html="data?.cevre_politikasi">
                                    <!-- {{ data?.cevre_politikasi }} -->
                                </p>
                            </div>
                            <div  style="text-align: left" v-html="data.cevre_politikasi">
                            </div>
                        </div>
                    </div>


                    <div class="col-md-12 mt-5">
                        <div class="custom-carousel-caption d-none d-md-block mt-5"></div>

                        <div class="col-12 mt-5">
                            <h2 class="c-h2-title" data-aos="fade-up" data-aos-duration="3000">
                                {{ data?.licence_title }}
                            </h2>
                        </div>
                        <div class="col-md-12 d-flex align-items-center justify-content-center mt-5" data-aos="fade-down"
                            data-aos-duration="3000">
                            <div class="icon-box referances-item" style="width: 100%; border: unset">
                                <div>
                                    <a target="_blank" :href="permission_licence">
                                        <img class="img-fluid" style="
                                                border-radius: 3px;
                                                max-height: 500px;
                                            " :src="permission_licence" />
                                    </a>
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
            image: "",
            hero: "",
            permission_licence: "",
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
                        this.hero = response.data.hero;
                        this.permission_licence =
                            response.data.permission_licence;
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
.icon-box {
    margin-bottom: 16px;
    transition: all ease-in-out 0.4s;
    /* min-width: 285px; */
    text-align: center;
}

.icon-box:hover {
    transform: translateY(-10px);
}

.referances-item {
    display: flex;
    align-content: center;
    justify-content: center;
    flex-wrap: wrap;
    border: #ccc solid 1px;
    border-radius: 4px;
}

.header-title {
    display: block;
    align-items: center;
    position: relative;
    color: #222;
    white-space: nowrap;
    /* padding-top: 2rem;
  padding-bottom: 2rem; */
    /* border-top: 3px solid #47b2e4 !important;
  border-bottom: 3px solid #47b2e4 !important; */
}

.header-title::after {
    margin-left: 0.83rem;

    margin-bottom: 0.9rem !important;
    content: "";
    width: 50px;
    height: 2px;
    background: #2186c2;
    display: inline-block;
}

.header-title::before {
    margin-right: 0.83rem;
    margin-bottom: 0.9rem !important;
    content: "";
    width: 50px;
    height: 2px;
    background: #2186c2;
    display: inline-block;
}

@media (max-width: 992px) {
    .text-content {
        margin-top: 2rem;
    }
}
</style>
