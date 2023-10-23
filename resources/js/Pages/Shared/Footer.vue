<template>
    <footer>
        <div class="row justify-content-center" style="padding-bottom: 1rem;">
            <img v-for="(item,, index) in companies" :key="index" class="ml-3 img-fluid" style="max-height: 80px;"
                :src="item.img_url">
        </div>
        <hr style="width: 100%; margin-top: 0px;">
        <div class="container">

            <div class="row">
                <div class="d-flex align-items-center justify-content-between col-lg-12 col-md-12 col-sm-12 ">
                    <ul class="social">
                        <li v-for="(item, index) in footer" :key="index">
                            <a target="_blank" :href="item.link"><i :class="item?.class"></i></a>
                        </li>
                    </ul>
                    <div class="btn-group dropup">
                        <a type="button" class="btn dropdown-toggle d-flex align-items-center" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <img class="" :src="$page.props.site_url + currentLanguage?.img_url" />
                            <p cl style="color: #1e1e1e; margin-left: 0.25rem">
                                {{ currentLanguage?.name }}
                            </p>
                        </a>
                        <ul class="dropdown-menu">
                            <li v-for="(item, index) in languages" :key="index">
                                <a class="dropdown-item" @click.prevent="changeLanguage(item.key)">
                                    <img class="img-fluid flag-img" :src="item.img_url" />
                                    {{ item?.name }}
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</template>

<script>
import axios from "axios";

export default {
    data() {
        return {
            footer: {},
            languages: [],
            companies: [],
        };
    },
    computed: {
        currentLanguage() {
            const lang = this.$page.props.lang;
            if (this.languages != null || this.languages != []) {
                return this.languages.find((language) => language.key === lang);
            }
        },
    },
    mounted() {
        // Sayfa yüklendiğinde veriyi çek
        this.getData();
    },
    methods: {
        async getData() {
            try {
                axios
                    .get(route("footer.data"))
                    .then((response) => {
                        this.footer = response.data.footer;
                        this.languages = response.data.languages;
                        this.companies = response.data.companies;
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
        const changeLanguage = (lang) => {
            axios.post("/set-language", { language: lang }).then(() => {
                window.location.reload();
            });
        };

        return {
            changeLanguage,
        };
    },
};
</script>
