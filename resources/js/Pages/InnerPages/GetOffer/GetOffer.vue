<template>
    <Head title="İletişim"></Head>
    <Layout>
        <div class="row">
            <img style="max-height: 400px; width: 100%;" :src="hero" class="img-fluid">
        </div>
        <div class="container">
            <div class="row" style="margin-top: 80px">
                <div class="col-md-12" style="display: flex; align-items: center; justify-content: center">
                    <div class=" ">
                        <Transition name="slide-title">
                            <h1 class="header-title" v-if="data.data?.offer_form_title">
                                {{ data.data?.offer_form_title }}
                            </h1>
                        </Transition>
                    </div>
                </div>
            </div>
            <div class="custom-carousel-caption d-none d-md-block mt-5"></div>
        </div>
        <div class="container">

            <div class="row mt-5">
                <div data-aos="fade-up" data-aos-duration="3000" class="row mt-5">
                    <form class="row g-3" @submit.prevent="createOfferForm">
                        <div class="col-md-6">
                            <label for="name" class="form-label">{{ data.data?.get_offer_place_hold?.name }}</label>
                            <input v-model="offerForm.name" class="form-control" id="name">
                            <div class="alert alert-danger mt-2" role="alert" v-if="errors?.name">
                                {{ errors.name }}
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="last_name" class="form-label">{{ data.data?.get_offer_place_hold?.last_name
                            }}</label>
                            <input v-model="offerForm.last_name" class="form-control" id="last_name">
                            <div class="alert alert-danger mt-2" role="alert" v-if="errors?.last_name">
                                {{ errors.last_name }}
                            </div>
                        </div>

                        <div class="col-md-6 mt-3">
                            <label for="email" class="form-label">{{ data.data?.get_offer_place_hold?.upload_address
                            }}</label>
                            <input v-model="offerForm.upload_address" class="form-control" id="email">
                            <div class="alert alert-danger mt-2" role="alert" v-if="errors?.upload_address">
                                {{ errors.upload_address }}
                            </div>
                        </div>

                        <div class="col-md-6 mt-3">
                            <label for="email" class="form-label">{{ data.data?.get_offer_place_hold?.destination_address
                            }}</label>
                            <input v-model="offerForm.destination_address" class="form-control" id="email">
                            <div class="alert alert-danger mt-2" role="alert" v-if="errors?.destination_address">
                                {{ errors.destination_address }}
                            </div>
                        </div>

                        <div class="col-md-6 mt-3">
                            <label for="phone" class="form-label">{{ data.data?.get_offer_place_hold?.phone }}</label>
                            <input v-model="offerForm.phone" class="form-control" id="phone">
                            <div class="alert alert-danger mt-2" role="alert" v-if="errors?.phone">
                                {{ errors.phone }}
                            </div>
                        </div>

                        <div class="col-md-6 mt-3">
                            <label for="phone" class="form-label">{{ data.data?.get_offer_place_hold?.images }}</label>
                            <input type="file" class="form-control" multiple @change="handleFileUpload" id="phone"
                                style="height: unset;">
                            <div class="alert alert-danger mt-2" role="alert" v-if="errors?.images">
                                {{ errors.images }}
                            </div>
                        </div>

                        <div data-aos="zoom-in" data-aos-duration="3000" class="col-lg-12">
                            <fieldset class="text-center mt-4">
                                <button type="submit" id="form-submit" class="main-button">
                                    {{ data.data?.btn_text }}
                                </button>
                            </fieldset>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </Layout>
</template>

<script>
import axios from "axios";
import Layout from "../../Shared/Layout.vue";
import { useForm } from "@inertiajs/vue3";

export default {
    props: {
        errors: Object,
    },
    data() {
        return {
            data: {},
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
        handleFileUpload(event) {
            this.files = event.target.files;
        },
        createOfferForm() {
            this.offerForm.images = this.files;
            this.offerForm.post(route("contact-us-inner.store"), {
                onSuccess: () => {
                    this.clearOfferForm();
                    this.offerForm.reset();
                },
            });
        },
        clearOfferForm() {
            this.offerForm.name = null;
            this.offerForm.last_name = null;
            this.offerForm.images = null;
            this.offerForm.phone = null;
            this.offerForm.upload_address = null;
            this.offerForm.destination_address = null;
            this.files = null;
        },
        async getData() {
            try {
                axios
                    .get(route("contact-us-inner.data"))
                    .then((response) => {
                        this.data = response.data;
                        this.hero = response.data.hero;
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
        const offerForm = useForm({
            name: null,
            last_name: null,
            phone: null,
            images: [],
            upload_address: null,
            destination_address: null,
        });
        return {
            offerForm
        };
    },
};
</script>

<style scoped>
.contact-info ul div p {
    /* margin-left: 0.5rem; */
    /* font-size: 14px; */
    padding: 0 0 10px 1rem;
    line-height: 28px;
    margin-top: 0;
    margin-bottom: 1rem;
}

.contact-info ul div {
    display: flex;
}

.contact-info ul div i {
    font-size: 32px;
    line-height: 1;
    float: left;
    color: #2186c2;
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

@media (max-width: 992px) {
    .contact-form-container {
        margin-top: 3rem;
    }
}
</style>
