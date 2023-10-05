<template>
  <Head title="İletişim"></Head>
  <Layout>
    <div class="container">
      <div
        class="col-12"
        style="padding-top: 180px; padding-bottom: 10px; text-align: center"
      >
        <div>
          <iframe
            :src="data?.map_url"
            width="100%"
            height="450"
            style="border: 0; border-radius: 10px"
            allowfullscreen=""

          ></iframe>
        </div>
        <div>
          <p class="text-center mt-5">
            {{ data.data?.contact_text }}

          </p>
        </div>
      </div>
      <div class="hr"></div>
      <div
        class="col-md-12 row mt-5"
        style="padding-bottom: 70px; text-align: center"
      >
        <div class="col-md-12 col-lg-6">
          <div><h1>Teklif Al</h1></div>
          <div><h1>İçerik Bekleniyor</h1></div>
        </div>
        <div
          class="col-md-12 col-lg-6 contact-form-container"
          style="padding-right: 0px"
        >
          <form
            class="custom-form"
            id="contact"
            @submit.prevent="createContactForm"
          >
            <div class="row justify-content-center">
              <h3 >
                {{ data.data?.form_title }}
              </h3>
            </div>
            <div class="row mt-4">
              <div class="col-lg-12 col-md-12 col-sm-12">
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
              <div class="col-lg-12 col-md-12 col-sm-12">
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
              <div class="col-lg-12 ">
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
          .get(route("contact-us-inner.data"))
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

<style scoped>
.form-control {
  border: 1px solid #b6b6b6;
  color: #ffffff;
  font-size: 14px;
  width: 100%;
  height: 50px;
  outline: none;
  padding-left: 20px;
  padding-right: 20px;
  border-radius: 25px;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  margin-bottom: 30px;
}

.custom-form {
  margin-top: 0px;

  padding: 30px !important;
}
@media (max-width: 992px) {
  .contact-form-container {
    margin-top: 3rem;
  }
}
</style>
