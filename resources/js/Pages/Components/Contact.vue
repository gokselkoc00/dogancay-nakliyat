<template>
    <div class="hr" style="  border-bottom: 3px solid #ccc;"></div>

    <section class="" id="contact-us">
        <div class="container">
            <!-- ***** Section Title Start ***** -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="center-heading">
                        <h1 class="mt-5">{{ data.data?.title }}</h1>
                    </div>
                </div>
                <div class="offset-lg-3 col-lg-6">
                    <div class="text-center mt-4">
                        <p>{{ data.dataGeneral?.telefon }}</p>
                    </div>
                </div>
            </div>
            <!-- ***** Section Title End ***** -->

            <div class="row mt-5">
                <!-- ***** Contact Text Start ***** -->
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <!-- <h5 class="margin-bottom-30"></h5> -->
                    <div class="contact-info mt-3">
                        <div>
                            <h3>{{ data.data?.contact_title }}</h3>

                            <ul class="mt-5">
                                <div>
                                    <i class="ri-map-pin-line"></i>
                                    <p>{{ data.dataGeneral?.adres }}</p>
                                    <!-- {{ data.data?.info_names?.adres + data.dataGeneral?.adres }} -->
                                </div>
                                <div>
                                    <i class="ri-phone-line"></i>
                                    <p>{{ data.dataGeneral?.telefon }}</p>
                                </div>
                                <div>
                                    <i class="ri-printer-line"></i>
                                    <p>{{ data.dataGeneral?.faks }}</p>
                                </div>
                                <div>
                                    <i class="ri-mail-send-line"></i>
                                    <p>{{ data.dataGeneral?.email }}</p>
                                </div>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- ***** Contact Text End ***** -->

                <!-- ***** Contact Form Start ***** -->
                <div class="col-lg-8 col-md-6 col-sm-12">
                    <form class="row g-3" @submit.prevent="createContactForm">
                        <div class="col-md-6">
                            <label for="name" class="form-label">{{ data.data?.place_holder?.name }}</label>
                            <input v-model="contactForm.name" class="form-control" id="name">
                            <div class="alert alert-danger mt-2" role="alert" v-if="errors?.name">
                                {{ errors.name }}
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="last_name" class="form-label">{{ data.data?.place_holder?.last_name }}</label>
                            <input v-model="contactForm.last_name" class="form-control" id="last_name">
                            <div class="alert alert-danger mt-2" role="alert" v-if="errors?.last_name">
                                {{ errors.last_name }}
                            </div>
                        </div>
                        <div class="col-md-6 mt-3">
                            <label for="email" class="form-label">{{ data.data?.place_holder?.email }}</label>
                            <input v-model="contactForm.email" class="form-control" id="email">
                            <div class="alert alert-danger mt-2" role="alert" v-if="errors?.email">
                                {{ errors.email }}
                            </div>
                        </div>
                        <div class="col-md-6 mt-3">
                            <label for="phone" class="form-label">{{ data.data?.place_holder?.phone }}</label>
                            <input v-model="contactForm.phone" class="form-control" id="phone">
                            <div class="alert alert-danger mt-2" role="alert" v-if="errors?.phone">
                                {{ errors.phone }}
                            </div>
                        </div>
                        <div class="col-md-12 mt-3">
                            <label for="message" class="form-label">{{ data.data?.place_holder?.message }}</label>
                            <textarea v-model="contactForm.message" class="form-control" id="message" rows="4"></textarea>
                            <div class="alert alert-danger mt-2" role="alert" v-if="errors?.message">
                                {{ errors.message }}
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <fieldset class="text-center mt-4">
                                <button type="submit" id="form-submit" class="main-button">
                                    {{ data.data?.btn_text }}
                                </button>
                            </fieldset>
                        </div>
                    </form>
                </div>
                <!-- ***** Contact Form End ***** -->
            </div>
        </div>
    </section>
</template>


<script>
import axios from "axios";
import { useForm } from "@inertiajs/vue3";

export default {
    props: {
        errors: Object,
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
                    .get(route("contact.data"))
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
        createContactForm() {
            this.contactForm.post(route("contact.store"), {
                onSuccess: () => {
                    this.clearForm();
                    this.contactForm.reset();
                },
            });
        },
        clearForm() {
            this.contactForm.name = null;
            this.contactForm.last_name = null;
            this.contactForm.email = null;
            this.contactForm.phone = null;
            this.contactForm.message = null;
        },
    },
    setup() {
        const contactForm = useForm({
            name: null,
            last_name: null,
            email: null,
            phone: null,
            message: null,
        });
        return {
            contactForm,
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
</style>
