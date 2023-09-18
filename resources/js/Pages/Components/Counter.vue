<template>
  <section class="counter">
    <div class="content">
      <div class="container">
        <div class="row">
          <div
            class="col-lg-3 col-md-6 col-sm-12"
            v-for="(item, index) in data"
            :key="index"
          >
            <div class="count-item decoration-bottom">
              <strong>{{ animatedCounters[index] }}</strong>
              <span>{{ item.name }}</span>
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
    };
  },
  setup() {
    const state = reactive({
      data: {},
      counters: [],
      animatedCounters: [],
    });

    const fetchCounters = () => {
      axios
        .get(route("counter.data"))
        .then((response) => {
          state.data = response.data;
          state.counters = response.data;
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
