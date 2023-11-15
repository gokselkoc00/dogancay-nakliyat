<template>
    <nav
        style="z-index: 1000"
        :class="{ 'header-area-scrolled': isScrolled }"
        class="navbar navbar-expand-lg navbar-light header-area header-sticky"
    >
        <div
            :class="{ 'container-scrolled': isScrolled }"
            class="container-fluid main-nav"
        >
            <a href="/" class="logo mt-1">
                <img :src="logo" alt="Dogancay Logo" height="36" />
            </a>
            <button
                @click="toggleMobileMenu"
                class="navbar-toggler mobile-button menu-trigger"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarScroll"
                aria-controls="navbarScroll"
                aria-expanded="false"
                aria-label="Toggle navigation"
            >
                <span class="navbar-toggler-icon mt-1"></span>
            </button>
            <div
                class="collapse navbar-collapse custom-navbar"
                id="navbarScroll"
            >
                <ul
                    class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll align-items-center"
                    style="--bs-scroll-height: 100px"
                >
                    <li
                        class="nav-item"
                        v-for="(item, index) in headerData"
                        :key="index"
                    >
                        <div v-if="item.subItems && item.subItems.length > 0">
                            <li class="nav-item dropdown">
                                <a
                                    class="nav-link active dropdown-toggle"
                                    href="#"
                                    id="navbarScrollingDropdown"
                                    role="button"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false"
                                >
                                    <span>{{ item.title }}</span>
                                    <i class="bx bx-chevron-down"></i>
                                </a>
                                <ul
                                    class="dropdown-menu"
                                    aria-labelledby="navbarScrollingDropdown"
                                >
                                    <li
                                        v-for="(
                                            subItem, subKey
                                        ) in item.subItems"
                                        :key="subKey"
                                    >
                                        <a
                                            class="dropdown-item c-dropdown-item"
                                            :href="route(subItem.url)"
                                            ><i class="bx bx-chevron-right"></i
                                            ><span>{{ subItem.title }}</span></a
                                        >
                                    </li>
                                </ul>
                            </li>
                        </div>
                        <div v-else>
                            <li class="nav-item" v-if="item.url == 'home'">
                                <Link
                                    class="nav-link active"
                                    :href="route(item.url)"
                                    ><span>{{ item.title }}</span></Link
                                >
                            </li>
                            <!-- Normal başlık -->
                            <li class="nav-item" v-else>
                                <Link
                                    class="nav-link active"
                                    :href="route(item?.url)"
                                    ><span>{{ item.title }}</span></Link
                                >
                            </li>
                        </div>
                    </li>
                    <li class="nav-item ml-2">
                        <a
                            :href="
                                'https://api.whatsapp.com/send?phone=' +
                                whatsapp_phone
                            "
                            target="_blank"
                        >
                            <i class="bx bxl-whatsapp"></i>
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a
                            class="nav-link active dropdown-toggle"
                            href="#"
                            id="navbarScrollingDropdown"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                            style="
                                display: flex !important;
                                align-items: center !important;
                                justify-content: center;
                            "
                        >
                            <img
                                style="max-height: 32px"
                                class=""
                                :src="
                                    $page.props.site_url +
                                    currentLanguage?.img_url
                                "
                            />
                        </a>
                        <ul
                            class="dropdown-menu c-dropdown-menu-flag"
                            aria-labelledby="navbarScrollingDropdown"
                            style=""
                        >
                            <li v-for="(item, index) in languages" :key="index">
                                <a
                                    style="text-align: center; cursor: pointer"
                                    class="dropdown-item c-l-dropdown-item"
                                    @click.prevent="changeLanguage(item.key)"
                                >
                                    <img
                                        style="max-height: 32px"
                                        class="mr-2"
                                        :src="
                                            $page.props.site_url + item?.img_url
                                        "
                                    />
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</template>

<script>
import axios from "axios";

export default {
    data() {
        return {
            headerData: {},
            logo: "",
            whatsapp_phone: "",
            isScrolled: false,
            languages: [],
        };
    },
    computed: {
        currentLanguage() {
            const lang = this.$page.props.lang;
            if (this.languages != null || this.languages != []) {
                console.log(lang);

                return this.languages.find((language) => language.key === lang);
            }
        },
    },
    mounted() {
        this.getData();
        this.initializeWindowResizeHandler();
        window.addEventListener("scroll", this.handleScroll);
    },
    methods: {
        handleScroll() {
            const scrollPosition = window.scrollY;

            // Örneğin, 100 piksel scroll edildiğinde header'ın görünümünü değiştir
            if (scrollPosition > 100) {
                this.isScrolled = true;
            } else {
                this.isScrolled = false;
            }
        },
        async getData() {
            try {
                axios
                    .get(route("header.data"))
                    .then((response) => {
                        this.headerData = response.data.data;
                        this.logo = response.data.logo;
                        this.whatsapp_phone = response.data.whatsapp_phone;
                        this.languages = response.data.languages;
                    })
                    .catch((error) => {
                        console.error(error);
                    });
            } catch (error) {
                console.error(error);
            }
        },
        toggleMobileMenu() {
            // Mobile menüyü açma/kapatma işlevini Vue ile yönetin
            this.isMobileMenuOpen = !this.isMobileMenuOpen;
            const headerNav = document.querySelector(
                ".header-area .menu-trigger"
            );
            if (headerNav) {
                headerNav.classList.toggle("active");
            }
        },
        initializeWindowResizeHandler() {
            // Pencere yeniden boyutlandığında işlevselliği burada başlatın
            window.addEventListener("resize", () => {
                // this.mobileNav();
            });
        },
        mobileNav() {
            // Mobil menü işlevselliğini burada başlatın
            const width = window.innerWidth;
            document.querySelectorAll(".submenu").forEach((submenu) => {
                submenu.addEventListener("click", () => {
                    if (width < 992) {
                        const submenuUl = submenu.querySelector("ul");
                        if (submenuUl) {
                            submenuUl.classList.toggle("active");
                        }
                    }
                });
            });
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
.c-dropdown-menu-flag {
    min-width: 0;
    border: unset;
    transform: translate(-17px, -5px);
}
.c-l-dropdown-item {
    background-color: unset;
}
.bxl-whatsapp {
    font-size: 32px;
}
.bxl-whatsapp:hover {
    color: #25d366;
}

.header-area .main-nav li a {
    display: block !important;
    font-size: 16px !important;
    color: #f5f5f5 !important;
    -webkit-transition: all 0.3s ease 0s !important;
    -moz-transition: all 0.3s ease 0s !important;
    -o-transition: all 0.3s ease 0s !important;
    transition: all 0.3s ease 0s !important;
    border: transparent !important;
    letter-spacing: 1px !important;
}

.navbar-expand-lg .navbar-nav .dropdown-menu {
    background: rgba(255, 255, 255, 0.33);
    border-radius: 16px;
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
    backdrop-filter: blur(19.9px);
    -webkit-backdrop-filter: blur(19.9px);
    border: 1px solid rgba(255, 255, 255, 0.29);
    border: unset;
}
.navbar-expand-lg .navbar-nav .dropdown-menu:hover {
    background: transparent;
}

.dropdown-toggle:hover span,
.dropdown-toggle:hover i {
    color: #0f4c7a;
}

.dropdown-toggle:hover span {
    font-weight: bold;
}

.c-dropdown-item:hover {
    background: transparent;
}

.c-dropdown-item:hover span,
.c-dropdown-item:hover i {
    color:#2186c2;
}

.c-dropdown-item span {
    font-weight: 400;
    color: #0f4c7a;
}
.c-dropdown-item  i {
    color: #0f4c7a;
}
.nav-link span:hover {
    color: #0f4c7a;
    font-weight: bold;
}
.dropdown-toggle::after {
    display: none;
}

.header-area-scrolled {
    background-color: #2186c2;
}
.container-scrolled .dropdown-toggle:hover span,
.container-scrolled .dropdown-toggle:hover i {
    color: #0f4c7a;
}

.container-scrolled .nav-link span:hover {
    color: #0f4c7a;
    font-weight: bold;
}

/*  */
.container {
    background: #2186c2;
}

.mobile-button {
    border: 0px;
    margin-right: 0.25rem;
}

.logo {
    margin-top: 17px !important;
    margin-bottom: 17px !important;
}

.custom-navbar {
    margin-right: 1rem;
    justify-content: end !important;
}
.header-area .main-nav {
  background: #2186c2ad;
}

.header-area .main-nav ul .dropdown-menu a {
    height: 40px !important;
}

.header-area-scrolled {
    padding-left: 0px;
    padding-right: 0px;
    top: -10px;
    padding-top: 0px;
    margin-top: 0px;
}

.container-scrolled {
    max-width: 100%;
    border-radius: 0px;
    padding-left: 14rem;
    padding-right: 14rem;
}

@media ((min-width: 993px)) {
    .container-scrolled {
        padding-left: 0px;
        padding-right: 0px;
        margin-top: 1rem !important;
    }
}

@media (max-width: 992px) {
    .menu-trigger {
        position: relative !important;
        margin-bottom: 40px !important;
        padding-right: 0px !important;
        margin-right: 0px !important;
    }

    .logo {
        margin-top: 27px !important;
        margin-bottom: 17px !important;
    }

    .dropdown-menu {
        margin-left: 2rem !important;
        margin-right: 1rem !important;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    .navbar-nav {
        max-height: 535px;
        overflow-y: auto;
    }

    ::-webkit-scrollbar {
        width: 3px;
    }

    /* Thumb (kaydırma çubuğu) */
    ::-webkit-scrollbar-thumb {
        background-color: #13547a;
        /* Kaydırma çubuğu rengi */
        border-radius: 4px;
        /* Kaydırma çubuğu köşe yuvarlaması */
    }
    .container-scrolled {
        padding-left: 0px;
        padding-right: 0px;
        margin-top: 0rem;
    }
    #navbarScroll {
        background: #2186c2;
        box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
        backdrop-filter: blur(19.9px);
        -webkit-backdrop-filter: blur(19.9px);
        border: unset;
    }
    .custom-navbar {
        margin-right: unset;
    }

    .dropdown-toggle:hover span,
    .dropdown-toggle:hover i {
        color: #f2f2f2;
    }

    .c-dropdown-item:hover span,
    .c-dropdown-item:hover i {
        color: #f2f2f2;
    }

    .nav-link span:hover {
        color: #f2f2f2;
        font-weight: bold;
    }

    .c-dropdown-item:hover span {
        color: #f2f2f2;
        font-weight: bold;
    }

    .c-dropdown-menu-flag {
        min-width: 0;
        border: unset;
        transform: translate(-5px, -5px);
    }
}
</style>
