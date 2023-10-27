<template>
    <section
        class="section padding-bottom-0"
        id="features"
        style="padding-top: 30px"
    >
        <div class="container">
            <div class="hr"></div>

            <div v-for="(item, index) in data" :key="index" class="mt-5">
                <div
                    class="row"
                    v-if="item.position == 'L'"
                    data-aos="fade-right"
                    data-aos-duration="3000"
                >
                    <div
                        class="col-lg-5 col-md-12 col-sm-12 align-self-center"
                        data-scroll-reveal="enter left move 30px over 0.6s after 0.4s"
                    >
                        <img
                            :src="item.img_url"
                            class="rounded img-fluid d-block mx-auto"
                            alt="App"
                        />
                    </div>
                    <div class="col-lg-1"></div>
                    <div
                        class="col-lg-6 col-md-12 col-sm-12 align-self-center mobile-top-fix"
                    >
                        <div class="left-heading">
                            <h2 class="c-h2-title">{{ item.title }}</h2>
                        </div>
                        <div class="left-text">
                            <p>{{ item.text }}</p>
                        </div>
                    </div>
                    <div class="col-12" v-if="index !== data.length - 1">
                        <div class="col-lg-12">
                            <div class="hr"></div>
                        </div>
                    </div>
                </div>

                <div
                    class="row"
                    v-else
                    data-aos="fade-left"
                    data-aos-duration="3000"
                >
                    <div
                        class="col-lg-6 col-md-12 col-sm-12 align-self-center mobile-bottom-fix padding-bottom-100"
                    >
                        <div class="left-heading">
                            <h2 class="c-h2-title">{{ item.title }}</h2>
                        </div>
                        <div class="left-text">
                            <p>
                                {{ item.text }}
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-1"></div>
                    <div
                        class="col-lg-5 col-md-12 col-sm-12 align-self-center mobile-bottom-fix-big"
                        data-scroll-reveal="enter right move 30px over 0.6s after 0.4s"
                    >
                        <img
                            :src="item.img_url"
                            class="rounded img-fluid d-block mx-auto"
                            alt="App"
                        />
                    </div>
                    <div class="col-12" v-if="index !== data.length - 1">
                        <div class="col-lg-12">
                            <div class="hr"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
import axios from "axios";

export default {
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
                    .get(route("features.data"))
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
