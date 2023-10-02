<template>
  <section class="counter"  :style="{ backgroundImage: `url(${image})` }">
    <div class="content"  :style="{ backgroundImage: `url(${test})` }">
      <div class="container">
        <div class="row">
          <div
            class="col-lg-3 col-md-6 col-sm-12"
            v-for="(item, index) in data"
            :key="index"
          >
            <div class="count-item decoration-bottom">
              <strong style="color: black;">{{ animatedCounters[index] }}</strong>
              <span style="color: black; text-transform: uppercase;"><b>{{ item.name }}</b></span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import axios from "axios";
import { reactive, onMounted } from "vue";

export default {
  data() {
    return {
      //   data: {},
      test:""
    };
  },
  setup() {
    const state = reactive({
      data: {},
      image:"",
      counters: [],
      animatedCounters: [],
    });

    const fetchCounters = () => {
      axios
        .get(route("counter.data"))
        .then((response) => {
          state.data = response.data.data;
          state.counters = response.data.data;
          state.image = response.data.image;
          startCounting();
        })
        .catch((error) => {
          console.error(error);
        });
    };

    const startCounting = () => {
      state.animatedCounters = state.counters.map(() => 0);
      const duration = 4000; // Animasyon süresi milisaniye cinsinden
      const interval = 50; // Güncelleme aralığı milisaniye cinsinden
      const steps = duration / interval; // Adım sayısı

      state.counters.forEach((counter, index) => {
        const targetValue = counter.count;
        const step = Math.ceil(targetValue / steps);
        let currentCount = 0;

        const intervalId = setInterval(() => {
          currentCount += step;
          if (currentCount >= targetValue) {
            currentCount = targetValue;
            clearInterval(intervalId);
          }
          state.animatedCounters[index] = currentCount;
        }, interval);
      });
    };

    onMounted(() => {
      fetchCounters();
    });

    return state;
  },
};
</script>
