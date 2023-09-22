<template>
  <section class="section colored" id="contact-us">
    <div class="container">
      <!-- ***** Section Title Start ***** -->
      <div class="row">
        <div class="col-lg-12">
          <div class="hr"></div>
          <div class="center-heading">
            <h2 class="section-title">{{ data.data?.title }}</h2>
          </div>
        </div>
        <div class="offset-lg-3 col-lg-6">
          <div class="center-text">
            <p>{{ data.dataGeneral?.telefon }}</p>
          </div>
        </div>
      </div>
      <!-- ***** Section Title End ***** -->

      <div class="row">
        <!-- ***** Contact Text Start ***** -->
        <div class="col-lg-4 col-md-6 col-sm-12">
          <h5 class="margin-bottom-30"></h5>
          <div class="contact-text">
            <div>
              <ul>
                <li>
                  {{ data.data?.info_names?.adres + data.dataGeneral?.adres }}
                </li>
                <li>
                  {{
                    data.data?.info_names?.telefon + data.dataGeneral?.telefon
                  }}
                </li>
                <li>
                  {{ data.data?.info_names?.faks + data.dataGeneral?.faks }}
                </li>
                <li>
                  {{ data.data?.info_names?.email + data.dataGeneral?.email }}
                </li>
              </ul>
            </div>
            <p>{{ data.dataGeneral?.company }}</p>
          </div>
        </div>
        <!-- ***** Contact Text End ***** -->

        <!-- ***** Contact Form Start ***** -->
        <div class="col-lg-8 col-md-6 col-sm-12">
          <div class="contact-form">
            <form id="contact" @submit.prevent="createContactForm">
              <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12">
                  <fieldset>
                    <input
                      name="name"
                      type="text"
                      class="form-control"
                      id="name"
                      v-model="contactForm.name"
                      :placeholder="data.data?.place_holder?.name"
                    />
                    <div
                      class="alert alert-danger mt-2"
                      role="alert"
                      v-if="errors?.name"
                    >
                      {{ errors.name }}
                    </div>
                  </fieldset>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12">
                  <fieldset>
                    <input
                      name="email"
                      class="form-control"
                      id="email"
                      v-model="contactForm.email"
                      :placeholder="data.data?.place_holder?.email"
                    />
                    <div
                      class="alert alert-danger mt-2"
                      role="alert"
                      v-if="errors?.email"
                    >
                      {{ errors.email }}
                    </div>
                  </fieldset>
                </div>
                <div class="col-lg-12">
                  <fieldset>
                    <textarea
                      name="message"
                      rows="6"
                      class="form-control"
                      id="message"
                      v-model="contactForm.message"
                      :placeholder="data.data?.place_holder?.message"
                    ></textarea>
                    <div
                      class="alert alert-danger mt-2"
                      role="alert"
                      v-if="errors?.message"
                    >
                      {{ errors.message }}
                    </div>
                  </fieldset>
                </div>
                <div class="col-lg-12">
                  <fieldset>
                    <button type="submit" id="form-submit" class="main-button">
                      {{ data.data?.btn_text }}
                    </button>
                  </fieldset>
                </div>
              </div>
            </form>
          </div>
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
      this.contactForm.email = null;
      this.contactForm.message = null;
    },
  },
  setup() {
    const contactForm = useForm({
      name: null,
      email: null,
      message: null,
    });
    return {
      contactForm,
    };
  },
};
</script>
