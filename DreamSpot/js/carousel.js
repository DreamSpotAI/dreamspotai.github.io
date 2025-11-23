document.addEventListener("DOMContentLoaded", (_) => {
    let page = -1;
    let interval;
    const scrollable = document.getElementById("gallery-container");
    let navigators = Array.from(document.getElementsByClassName("indicator"));
    navigators.forEach(nav => {
        nav.onclick = (i) => {
            ResetNavigators();
            nav.classList.add("selected");
        };
    })

    function ResetInterval() {
        clearInterval(interval);
        interval = setInterval(scrollCarousel.bind(null, scrollable), 5000);
    }


    function ResetNavigators() {
        navigators.forEach(nav => {
            nav.classList.remove("selected");
        })
    }

    function scrollCarousel(scrollable) {
        page = (page + 1) % (navigators.length);
        scrollable.scroll(scrollable.clientWidth * page, 0)
    }

    const options = {
        root: null,
        rootMargin: '0px',
        threshold: 0.5
    };

    const gallery = document.getElementById("gallery");
    const galleryobserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                ResetInterval();
            }
        });
    }, options);
    galleryobserver.observe(gallery);


    const a = document.getElementById("a");
    const aobserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                ResetNavigators();
                ResetInterval();
                navigators[0].classList.add("selected");
                page = 0
            }
            else {
                ResetNavigators();
            }
        });
    }, options);
    aobserver.observe(a);

    const b = document.getElementById("b");
    const bobserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                ResetNavigators();
                ResetInterval();
                navigators[1].classList.add("selected");
                page = 1
            }
        });
    }, options);
    bobserver.observe(b);

    const c = document.getElementById("c");
    const cobserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                ResetNavigators();
                ResetInterval();
                navigators[2].classList.add("selected");
                page = 2
            }
        });
    }, options);
    cobserver.observe(c);
})