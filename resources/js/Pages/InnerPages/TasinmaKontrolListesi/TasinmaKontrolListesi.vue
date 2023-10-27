<template>
    <Head title="Taşınma Kontrol Listesi"></Head>
    <Layout>
        <div class="row">
            <img
                style="max-height: 400px; width: 100%"
                :src="hero"
                class="img-fluid"
            />
        </div>
        <div class="container">
            <div class="row mt-5">
                <div
                    class="col-md-12 d-flex align-items-center justify-content-center"
                >
                    <div>
                        <h2
                            class="c-h2-title"
                            v-if="data.data?.title"
                            data-aos="fade-right"
                            data-aos-duration="3000"
                        >
                            {{ data.data?.title }}
                        </h2>
                    </div>
                </div>
            </div>
            <div class="custom-carousel-caption d-none d-md-block mt-5"></div>

            <div class="container">
                <div v-for="(item, index) in contentList?.data" :key="index">
                    <div class="row" v-if="index % 2 === 0">
                        <div
                            class="col-lg-6 align-items-stretch order-2 order-lg-1 img aos-init aos-animate mt-5 mb-5"
                            data-aos="zoom-in"
                            data-aos-delay="150"
                        >
                            <img
                                class="cst-content-img img-fluid"
                                :src="item?.img_url"
                                alt="img"
                                data-aos="fade-right"
                                data-aos-duration="3000"
                            />
                        </div>
                        <div
                            class="col-lg-6 d-flex flex-column justify-content-center align-items-stretch order-1 order-lg-2"
                        >
                            <div class="content">
                                <p
                                    data-aos="fade-left"
                                    data-aos-duration="3000"
                                >
                                    {{ item?.text }}
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row" v-else>
                        <div
                            class="col-lg-6 d-flex flex-column justify-content-center align-items-stretch order-2 order-lg-1"
                        >
                            <div class="content">
                                <p
                                    data-aos="fade-right"
                                    data-aos-duration="3000"
                                >
                                    {{ item?.text }}
                                </p>
                            </div>
                        </div>
                        <div
                            class="col-lg-6 align-items-stretch order-1 order-lg-2 img aos-init aos-animate mt-5 mb-5"
                            data-aos="zoom-in"
                            data-aos-delay="150"
                        >
                            <img
                                class="cst-content-img img-fluid"
                                :src="item?.img_url"
                                alt=""
                                data-aos="fade-left"
                                data-aos-duration="3000"
                            />
                        </div>
                    </div>
                </div>
            </div>
            <div class="custom-carousel-caption d-none d-md-block mt-5"></div>

            <div class="container">
                <div class="row mt-5">
                    <div class="d-block">
                        <div class="text-center">
                            <h2
                                class="c-h2-title"
                                data-aos="fade-up"
                                data-aos-duration="3000"
                            >
                                {{ data.data?.check_list_title }}
                            </h2>
                        </div>
                        <div class="mt-3">
                            <ul class="list-group list-group">
                                <li
                                    class="mt-3"
                                    style="border-radius: 30px"
                                    v-for="(item, index) in data.data
                                        ?.check_list"
                                    :key="index"
                                >
                                    <div
                                        class="d-flex align-items-center"
                                        data-aos="fade-left"
                                        data-aos-duration="3000"
                                    >
                                        <i
                                            style="
                                                color: #a1a1a1;
                                                display: flex;
                                                font-size: 8px;
                                            "
                                            class="fa-solid fa-circle inline"
                                        ></i>
                                        <p
                                            style="
                                                display: flex;
                                                margin-left: 1rem;
                                            "
                                        >
                                            {{ item?.text }}
                                        </p>
                                    </div>
                                </li>
                            </ul>
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
            hero: "",
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
    animation: bounce-in 3s;
}

.bounce-leave-active {
    animation: bounce-in 3s reverse;
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
