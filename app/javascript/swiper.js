window.addEventListener("turbo:load", () => {
    const infiniteSlider = new Swiper(".infinite-slider", {
        loop: true,
        loopedSlides: 2,
        slidesPerView: "auto",
        speed: 8000,
        autoplay: {
            delay: 0,
            disableOnInteraction: false,
        },
        allowTouchMove: false,
    });
    window.addEventListener('popstate', function() {
        location.reload();
    });
});
