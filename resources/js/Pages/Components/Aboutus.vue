<template>
    <div class="padding-bottom-0">
        <div class="container">
            <div class="hr"></div>
            <div class="row mt-5">
                <div
                    class="col-md-12 col-lg-6 d-flex align-items-center justify-content-center"
                    data-aos="fade-right"
                    data-aos-duration="3000"
                >
                    <img
                        class="img-fluid custom-img"
                        :src="$page.props.site_url + image"
                    />
                </div>
                <div
                    class="col-md-12 col-lg-6"
                    data-aos="fade-left"
                    data-aos-duration="3000"
                >
                    <div class="left-heading">
                        <h2 class="c-h2-title">{{ data.title }}</h2>
                    </div>
                    <div class="left-text">
                        <p>{{ data.text }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from "axios";

export default {
    data() {
        return {
            data: {},
            image: "",
        };
    },
    mounted() {
        this.getData();
    },
    methods: {
        async getData() {
            try {
                axios
                    .get(route("aboutus.data"))
                    .then((response) => {
                        this.data = response.data.data;
                        this.image = response.data.image;
                    })
                    .catch((error) => {
                        console.error(error);
                    });
            } catch (error) {
                console.error(error);
            }
        },
    },
};
</script>

<style scoped>
.custom-img {
    border-radius: 4px;
}

@media (max-width: 992px) {
    .left-heading {
        margin-top: 3rem;
    }
}
</style>
