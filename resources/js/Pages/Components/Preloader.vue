<template>
  <div id="preloader">
    <div class="jumper">
      <div></div>
      <div></div>
      <div></div>
    </div>
  </div>
</template>

<script>
export default {
  mounted() {
    // Page loading animation
    if ($('.cover').length) {
      $('.cover').parallax({
        imageSrc: $('.cover').data('image'),
        zIndex: '1'
      });
    }

    $("#preloader").animate({
      'opacity': '0'
    }, 600, () => {
      setTimeout(() => {
        $("#preloader").css("visibility", "hidden").fadeOut();
      }, 300);
    });
  },
};
</script>
