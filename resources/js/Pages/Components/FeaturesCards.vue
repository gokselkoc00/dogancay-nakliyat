<template>
    <section class="services mt-5 ">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <!-- ***** Features Small Item Start ***** -->
                        <div class="col-md-6 col-lg-4 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up"
                            data-aos-delay="100" v-for="item in data" :key="item.id">
                            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                                <div class="icon"><i :class="item?.img_url"></i></div>
                                <!-- <div class="icon">
                  <i><img class="img-fluid" :src="item.img_url" alt="" /></i>
                </div> -->
                                <h4 class="title"><a target="_blank">{{
                                    item?.title }}</a></h4>
                                <p class="description">{{ item?.text }}</p>

                            </div>
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
                    .get(route("features-card.data"))
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

/*--------------------------------------------------------------
# Services
--------------------------------------------------------------*/

.services {
    margin-top: 20px;
}

.services .icon-box {
    padding: 30px;
    position: relative;
    overflow: hidden;
    background: #fff;
    box-shadow: 0 0 29px 0 rgba(68, 88, 144, 0.12);
    transition: all 0.3s ease-in-out;
    border-radius: 8px;
    z-index: 1;
}

.services .icon-box::before {
    content: '';
    position: absolute;
    background: #e1f0fa !important;
    right: -60px;
    top: -40px;
    width: 100px;
    height: 100px;
    border-radius: 50px;
    transition: all 0.3s;
    z-index: -1;
}

.services .icon-box:hover::before {
    background: #3498db !important;
    right: 0;
    top: 0;
    width: 100%;
    height: 100%;
    border-radius: 0px;
}

.services .icon {
    margin: 0 auto 20px auto !important;
    padding-top: 10px !important;
    display: inline-block !important;
    text-align: center !important;
    border-radius: 50% !important;
    width: 60px !important;
    height: 60px !important;
    background: #3498db !important;
    transition: all 0.3s ease-in-out !important;
}

.services .icon i {
    font-size: 33px;
    line-height: 1.2;
    color: #fff !important;
}

.services .title {
    font-weight: 700;
    margin-bottom: 15px;
    font-size: 18px;
}

.services .title a {
    color: #111 !important;
}

.services .description {
    font-size: 15px;
    line-height: 28px;
    margin-bottom: 0;
}

.services .icon-box:hover .title a,
.services .icon-box:hover .description {
    color: #fff !important;
}

.services .icon-box:hover .icon {
    background: #fff !important;
}

.services .icon-box:hover .icon i {
    color: #3498db !important;
}



@-webkit-keyframes fade-up {
    0% {
        -webkit-transform: translateY(0) !important;
        transform: translateY(0) !important;

        opacity: 1 !important;
    }

    75% {
        -webkit-transform: translateY(-20px) !important;
        transform: translateY(-20px) !important;

        opacity: 0 !important;
    }
}

@keyframes fade-up {
    0% {
        -webkit-transform: translateY(0) !important;
        transform: translateY(0) !important;

        opacity: 1 !important;
    }

    75% {
        -webkit-transform: translateY(-20px) !important;
        transform: translateY(-20px) !important;

        opacity: 0;
    }
}

.bx-fade-up {
    -webkit-animation: fade-up 1.5s infinite linear !important;
    animation: fade-up 1.5s infinite linear !important;
}

.bx-fade-up-hover:hover {
    -webkit-animation: fade-up 1.5s infinite linear !important;
    animation: fade-up 1.5s infinite linear !important;
}
</style>
