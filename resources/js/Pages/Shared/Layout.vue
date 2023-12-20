<template>
    <Header />
    <!-- <Preloader /> -->
    <slot>
    </slot>
    <footer>
        <div class="cerez-cont" v-if="!isCerezAccepted">
            <div class="cerez">
                <Link class="cerez-link col-9 col-lg-10" :href="route('cerez-politikalari.index')">
                    <p>
                        Dogancay International Movers çerezleri kullanıyor. Detaylar için, lütfen Gizlilik Politikası için
                        Tıklayınız.
                    </p>
                </Link>
                <button @click="cerezAccepted" class="btn btn-primary cerez-btn col-3 col-lg-2">Kabul Et</button>
            </div>
        </div>
    </footer>
    <Footer />
</template>
<script>
import Header from "./Header.vue";
import Footer from "./Footer.vue";
import Preloader from "../Components/Preloader.vue";
export default {

    data() {
        return {
            isCerezAccepted: false,
        };
    },
    components: {
        Header,
        Footer,
        Preloader,
    },
    mounted() {
        this.isCerezAccepted = localStorage.getItem("cerezStatus") === "true";
    },
    methods: {
        cerezAccepted() {
            localStorage.setItem("cerezStatus", true);
            this.isCerezAccepted = localStorage.getItem("cerezStatus");
        },
    }
};
</script>

<style scoped>
.cerez-cont {
  /* border-radius: 20px; */
  border-top-left-radius: 20px;
  border-top-right-radius: 20px;
    display: flex;
    justify-content: center;
    background: #2186c2;
    position: fixed;
    bottom: 0%;
    width: 100%;
    z-index: 999;
    height: 80px;
}

.cerez {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 1.5rem;
}

.cerez-link {
    color: white;
    font-weight: 400;
}

.cerez-link:hover {
    color: #0f4c7a;
}

.cerez-btn {
    background-color: #0f4c7a50;
    margin-left: 1rem;
    border-radius: 0px;
    border: 0px;
}

@media(max-width: 1040px) {
    .cerez-link {
        font-weight: 400;
    }
}

@media(max-width: 960px) {
    .cerez-link {
        font-size: 0.8rem;
    }
}

@media(max-width: 800px) {

    .cerez-btn{
        margin-top: 0.5rem;
        font-size: 0.8rem;
    }
}
@media(max-width: 800px) {
    .cerez{
    padding: 0.6rem;
   }
}
</style>
