<template>
    <Head title="Depolama"></Head>
    <Layout>
        <div class="row">
            <img style="max-height: 400px; width: 100%;" :src="hero" class="img-fluid">
        </div>
        <div class="container">
            <div class="row" style="margin-top: 80px">
                <div class="col-md-12" style="display: flex; align-items: center; justify-content: center">
                    <div class=" ">
                        <Transition name="slide-title">
                            <h1 class="header-title" v-if="data.data?.title">
                                {{ data.data?.title }}
                            </h1>
                        </Transition>
                    </div>
                </div>
            </div>
            <div class="custom-carousel-caption d-none d-md-block mt-5"></div>

            <div class="container" style="margin-bottom: 6rem;">
                <div v-for="(item, index) in contentList?.data" :key="index">
                    <div class="row" v-if="index % 2 === 0">
                        <div class="col-lg-6 align-items-stretch order-2 order-lg-1 img aos-init aos-animate mt-5 mb-5"
                            data-aos="zoom-in" data-aos-delay="150">
                            <img class="cst-content-img img-fluid" :src="item?.img_url" alt="" />
                        </div>
                        <div
                            class="col-lg-6 d-flex flex-column justify-content-center align-items-stretch order-1 order-lg-2">
                            <div class="content">
                                <p>{{ item?.text }}</p>
                            </div>
                        </div>
                    </div>

                    <div class="row" v-else>
                        <div
                            class="col-lg-6 d-flex flex-column justify-content-center align-items-stretch order-2 order-lg-1">
                            <div class="content">
                                <p>{{ item?.text }}</p>
                            </div>
                        </div>
                        <div class="col-lg-6 align-items-stretch order-1 order-lg-2 img aos-init aos-animate mt-5 mb-5"
                            data-aos="zoom-in" data-aos-delay="150">
                            <img class="cst-content-img img-fluid" :src="item?.img_url" alt="" />
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
            contentList: [],
            hero: ""
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
                    .get(route("depolama.data"))
                    .then((response) => {
                        this.data = response.data;
                        this.hero = response.data.hero;
                        this.contentList = response.data.data;
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
    content: '';
    width: 50px;
    height: 2px;
    background: #2186c2;
    display: inline-block;
}

.header-title::before {
    margin-right: 0.83rem;
    margin-bottom: 0.9rem !important;
    content: '';
    width: 50px;
    height: 2px;
    background: #2186c2;
    display: inline-block;
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
</style>
