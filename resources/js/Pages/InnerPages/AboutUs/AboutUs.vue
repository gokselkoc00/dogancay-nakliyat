<template>
    <Head title="Hakkımızda"></Head>
    <Layout>
        <div class="row">
            <img style="max-height: 400px; width: 100%;" :src="hero" class="img-fluid">

        </div>

        <div class="container">
            <div class="row" style="margin-top: 80px">
                <div class="col-md-12" style="display: flex; align-items: center; justify-content: center">
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
            <div class="col-md-12 row" style="padding-top: 80px; padding-bottom: 70px;  text-align: center;">

                <div class="row mt-5">
                    <div class="col-md-12 col-lg-6 " style="
                    display: flex;
                    justify-content: center;
                    align-items: center;">
                        <img class="img-fluid w-100" style="border-radius: 3px;" :src="image" />
                    </div>
                    <div class="col-md-12 col-lg-6 text-content" style="padding-right: 0px;">
                        <div>
                            <h2>{{ data?.title }}</h2>
                        </div>
                        <div class="mt-4">
                            <p style="text-align: left;">
                                {{ data?.text }}
                            </p>
                        </div>
                    </div>

                    <div class="col-md-12  mt-5">
                        <div class="custom-carousel-caption d-none d-md-block mt-5"></div>

                        <div class="col-12 mt-5">
                            <h1 class="text-left"> {{ data?.licence_title }}</h1>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 d-flex align-items-stretch mt-5">
                            <div class="icon-box referances-item" style="width: 100%;">
                                <div>
                                    <a target="_blank" :href="permission_licence">
                                        <img class="img-fluid" style="border-radius: 3px; max-height: 500px;"
                                            :src="permission_licence" />
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="col-xl-3 col-lg-4 col-md-6 d-flex align-items-stretch">

                        </div> -->
                        <!-- <a target="_blank" :href="permission_licence">
                            <img class="img-fluid" style="border-radius: 3px; max-height: 500px;"
                                :src="permission_licence" />
                        </a> -->
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
                        this.permission_licence = response.data.permission_licence;
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

@media(max-width: 992px) {
    .text-content {
        margin-top: 2rem;
    }
}
</style>
