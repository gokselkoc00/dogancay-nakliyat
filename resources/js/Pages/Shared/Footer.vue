<template>
    <footer>
        <div class="row justify-content-center mt-5 mb-5" data-aos="fade-up" data-aos-duration="3000">
            <img v-for="(item,, index) in companies" :key="index" class="ml-3 img-fluid" style="max-height: 80px"
                :src="item.img_url" />
        </div>
        <hr style="width: 100%; margin-top: 0px" />
        <div class="container">
            <div class="row">
                <div class="d-flex align-items-center justify-content-between col-lg-12 col-md-12 col-sm-12">
                    <ul class="social">
                        <li v-for="(item, index) in footer" :key="index">
                            <a target="_blank" :href="item.link"><i :class="item?.icon_class"></i></a>
                        </li>
                    </ul>
                    <div class="compny-info">{{ company_info }}</div>
                    <div class="btn-group dropup">
                        <a type="button" class="btn dropdown-toggle d-flex align-items-center" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <img style="max-height: 32px" class="" :src="$page.props.site_url +
                                currentLanguage?.img_url
                                " />
                        </a>
                        <ul class="dropdown-menu" style="
                                min-width: 0;
                                background: transparent;
                                border: unset;
                            ">
                            <li v-for="(item, index) in languages" :key="index">
                                <a style="text-align: center; cursor: pointer" class="dropdown-item c-l-dropdown-item"
                                    @click.prevent="changeLanguage(item.key)">
                                    <img style="max-height: 32px" :src="$page.props.site_url + item?.img_url
                                        " />
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <hr style="width: 100%; margin-top: 0px" />
        <div class="container">
            <div class="row">
                <div class="d-flex align-items-center col-lg-12 col-md-12 col-sm-12 ">
                    <Link :href="route('kvkk.index')">
                    <p class="ml-4 c-policy">{{ kvkk }}</p>
                    </Link>
                    <Link :href="route('cerez-politikalari.index')">
                    <p class="ml-4 c-policy">{{ cerez_politikasi }}</p>
                    </Link>
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
            company_info: "",
            kvkk: "",
            cerez_politikasi: "",
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
                        this.company_info = response.data.company_info;
                        this.kvkk = response.data.kvkk;
                        this.cerez_politikasi = response.data.cerez_politikasi;
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

<style scoped>
.c-l-dropdown-item {
    background-color: unset;
}

.compny-info {
    color: #3e3e3e;
}

.c-policy {
    color: #3e3e3e;
}

.c-policy:hover {
    color: #0d5594;
}

@media(max-width: 770px) {
    .compny-info {
        font-size: 0.7rem;
    }
}

@media(max-width: 585px) {
    .compny-info {
        width: 100%;
    }
}
</style>
