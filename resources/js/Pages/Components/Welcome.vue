<template>
    <div>
        <section class="c-section c-home">
            <div class="c-image-container">
                <img class="c-img-slider" :src="$page.props.site_url + item.img_url" alt="image" :key="index"
                    v-for="(item, index) in data" :class="{ active: index === currentSlide }" />
            </div>
            <div class="c-content" v-for="(item, index) in data" :class="{ active: index === currentSlide }" :key="index">
                <transition name="slide-title">
                    <h1 :key="currentSlide">
                        {{ item?.title }}
                    </h1>
                </transition>
                <transition name="slide-title">
                    <p :key="currentSlide" v-html="addLineBreaks(item?.text)"></p>
                </transition>
            </div>
            <div class="c-slider-navigation-left">
                <i class="fa-solid fa-chevron-left" @click="prevSlide" style="font-size: 40px;">
                </i>
                <div @click="prevSlide"></div>
            </div>
            <div class="c-slider-navigation-right">
                <div>
                    <i class="fa-solid fa-chevron-right" @click="nextSlide" style="font-size: 40px; ">
                    </i>
                </div>
            </div>
            <!-- <div style=" z-index: 999; position: fixed; transform: translateY(200px); justify-content: space-between; display: flex;">
            </div> -->
            <!-- <div class="c-media-icons">
                <a href="#"><i class="bx bxl-instagram"></i></a>
            </div> -->
            <!-- <div class="c-slider-navigation">
                <div v-for="(item, index) in data" :key="index" class="c-nav-btn" @click="changeSlide(index)"
                    :class="{ active: index === currentSlide }"></div>
            </div> -->
        </section>
    </div>
</template>

<script>
import axios from "axios";
export default {
    data() {
        return {
            data: [],
            currentSlide: 0,
            intervalId: null,
        };
    },
    async mounted() {
        try {
            const response = await this.getData();
            this.data = response.data;
        } catch (error) {
            console.error(error);
        }
    },
    methods: {
        async getData() {
            try {
                const response = await axios.get(route("welcome.data"));
                return response.data;
            } catch (error) {
                throw error;
            }
        },
        changeSlide(index) {
            this.currentSlide = index;
        },
        addLineBreaks(text) {
            text = text.replace(/\./g, ".<br>");
            text = text.replace(/,/g, ",<br>");
            return text;
        },
        startAutoplay() {
            this.intervalId = setInterval(this.nextSlide, 3000); // 3 saniyede bir slaytı değiştir
        },
        stopAutoplay() {
            clearInterval(this.intervalId);
        },
        // nextSlide() {
        //     this.currentSlide = (this.currentSlide + 1) % this.data.length;
        // },
        prevSlide() {
            console.log("prev")
            this.currentSlide = (this.currentSlide - 1 + this.data.length) % this.data.length;
        },
        nextSlide() {
            console.log("next")
            this.currentSlide = (this.currentSlide + 1) % this.data.length;
        },
    },
    // beforeMount() {
    //     this.startAutoplay(); // Otomatik oynatmayı başlat
    // },
    // beforeUnmount() {
    //     this.stopAutoplay(); // Bileşen öldüğünde otomatik oynatmayı durdur
    // },
};
</script>

<style scoped>
.c-section {
    padding: 100px 100px;
}

.c-home {
    position: relative;
    width: 100%;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    flex-direction: column;
    background: #0f4c7a;
}

.c-home .c-content {
    z-index: 888;
    color: #fff;
    width: 70%;
    margin-top: 50px;
    display: none;
    /* clip-path: circle(0% at 0% 50%); */
}

.c-home .c-content.active {
    display: block;
    /* clip-path: circle(150% at 0% 50%);
    transition: 2s ease;
    transition-property: clip-path; */
}

.c-home .c-content h1 {
    font-size: 4em;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 5px;
    line-height: 70px;
    margin-bottom: 40px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.9);
}

.c-home .c-content h1 span {
    font-weight: 400px;
    font-size: 1.2em;
}

.c-home .c-content p {
    margin-bottom: 60px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.9);
}

.c-home .c-content a {
    background: #fff;
    padding: 15px 36px;
    border-radius: 2px;
    color: #1680ac;
    text-decoration: none;
    font-size: 1.1em;
    font-weight: 400;
}

.c-home .c-media-icons {
    z-index: 888;
    position: absolute;
    right: 30px;
    display: flex;
    flex-direction: column;
    transition: 0.3s ease;
}

.c-home .c-media-icons a {
    color: #fff;
    font-size: 1.5em;
    transition: 0.3 ease;
}

.c-home .c-media-icons a:not(:last-child) {
    margin-bottom: 20px;
}

.c-home .c-media-icons a:hover {
    transform: scale(1.3);
}

.c-home .c-img-slider {
    z-index: 0;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.c-home::before {
    z-index: 777;
    content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
}

.c-slider-navigation-left,
.c-slider-navigation-right {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    position: absolute;
    z-index: 999;
}

.c-slider-navigation-left {
    left: 45px;
    /* order: -1; */
    /* To make it appear on the left */
}

.c-slider-navigation-right {
    right: 45px;
}

.fa-chevron-left,
.fa-chevron-right {
    font-size: 40px;
    z-index: 888;
    color: white;
    cursor: pointer;
    color: #ffff;
}

.c-home .c-slider-navigation {
    z-index: 888;
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    transform: translateY(200px);
}

.c-slider-navigation .c-nav-btn {
    width: 16px;
    height: 16px;
    border-radius: 50%;
    background: #0f4c7a;
    border: 2px solid #ffff;
    transform: 0.3s ease;
    box-shadow: 0 0 2px rgb(255, 255, 255, 0.5);
}

.c-slider-navigation .c-nav-btn:not(:last-child) {
    margin-right: 20px;
}

.c-slider-navigation .c-nav-btn:hover {
    transform: scale(1.3);
}

.c-img-slider {
    position: absolute;
    width: 100%;
    clip-path: circle(0% at 0% 50%);
}

.c-img-slider.active {
    clip-path: circle(150% at 0% 50%);
    transition: 2s ease;
    transition-property: clip-path;
}

@media (max-width: 992px) {
    .c-home .c-content h1 {
        font-size: 2.5em;
        margin-bottom: 5px;
    }

    .c-home .c-content p {
        margin-bottom: 5px;
    }
}

@media (max-width: 768px) {
    .c-home .c-content h1 {
        font-size: 1.5em;
        margin-bottom: 5px;
        line-height: 40px;
    }

    .c-home .c-content p {
        margin-bottom: 5px;
        font-size: 1em;
    }

    .c-home {
        min-height: unset;
    }
}

@media (max-width: 400px) {

    .c-home .c-content h1,
    .c-home .c-content p {
        display: none;
    }
}

@media (max-height: 992px) {
    .c-home .c-slider-navigation {
        transform: translateY(35px);
    }
}

@media (max-height: 768px) {
    .c-home .c-slider-navigation {
        transform: translateY(75px);
    }
}

@media (max-height: 576px) {
    .c-home .c-slider-navigation {
        transform: translateY(50px);
    }
}
</style>
