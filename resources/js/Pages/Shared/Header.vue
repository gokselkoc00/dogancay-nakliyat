<template>
  <nav class="navbar navbar-expand-lg navbar-light header-area header-sticky">
    <div class="container container-fluid main-nav">
      <a href="#" class="logo mt-1">
        <img :src="logo" alt="qtus8h1t.png" height="36" />
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
      <div class="collapse navbar-collapse custom-navbar" id="navbarScroll">
        <ul
          class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
          style="--bs-scroll-height: 100px"
        >
          <li class="nav-item" v-for="(item, index) in headerData" :key="index">
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
                  {{ item.title }}
                </a>
                <ul
                  class="dropdown-menu"
                  aria-labelledby="navbarScrollingDropdown"
                >
                  <li v-for="(subItem, subKey) in item.subItems" :key="subKey">
                    <a class="dropdown-item" :href="route(subItem.url)">{{
                      subItem.title
                    }}</a>
                  </li>
                </ul>
              </li>
            </div>
            <div v-else>
              <li class="nav-item" v-if="item.url == 'home'">
                <Link class="nav-link active" :href="route(item.url)">{{
                  item.title
                }}</Link>
              </li>
              <!-- Normal başlık -->
              <li class="nav-item" v-else>
                <a class="nav-link active" :href="item.url">{{ item.title }}</a>
              </li>
            </div>
          </li>
          <li class="nav-item">
            <a
              class="whatsapp"
              :href="'https://api.whatsapp.com/send?phone=' + whatsapp_phone"
              target="_blank"
            >
              <img
                class="img-fluid custom-wp"
                src="assets/images/WhatsApp.png"
                alt="WhatsApp iletişim hattı"
              />
            </a>
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
    };
  },

  mounted() {
    this.getData();
    this.initializeWindowResizeHandler();
  },
  methods: {
    async getData() {
      try {
        axios
          .get(route("header.data"))
          .then((response) => {
            this.headerData = response.data.data;
            this.logo = response.data.logo;
            this.whatsapp_phone = response.data.whatsapp_phone;
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
      const headerNav = document.querySelector(".header-area .menu-trigger");
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
};
</script>

  <style scoped>
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
.header-area .main-nav li a:hover {
  /* color: #7d0e0e !important; */
  color: #7d0e0e !important;
}
.header-area .main-nav li a {
  display: block !important;
  font-weight: 500 !important;
  font-size: 15px !important;
  color: #f5f5f5 !important;
  /* color: #1e1e1e !important; */
  -webkit-transition: all 0.3s ease 0s !important;
  -moz-transition: all 0.3s ease 0s !important;
  -o-transition: all 0.3s ease 0s !important;
  transition: all 0.3s ease 0s !important;

  border: transparent !important;
  letter-spacing: 1px !important;
}

.header-area .main-nav ul .dropdown-menu a {
  height: 40px !important;
  line-height: 40px !important;
  color: #1e1e1e !important;
}
.custom-wp {
  max-height: 2rem !important;
}
.flag-img {
  max-height: 1.3125rem !important;
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
    text-align: center !important;
    border: 1px solid #13547a;
    border-radius: 0.75rem;
  }

  .navbar-nav {
    max-height: 535px;
    overflow-y: auto;
  }

  ::-webkit-scrollbar {
    width: 3px; /* Scrollbar genişliği */
  }

  /* Thumb (kaydırma çubuğu) */
  ::-webkit-scrollbar-thumb {
    background-color: #13547a; /* Kaydırma çubuğu rengi */
    border-radius: 4px; /* Kaydırma çubuğu köşe yuvarlaması */
  }
}
</style>
