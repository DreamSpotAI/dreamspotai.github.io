document.addEventListener("DOMContentLoaded", (_) => {

    let navigators = Array.from(document.getElementsByClassName("navigator"));
    navigators.forEach(nav => {
        nav.onclick = () => {
            ResetNavigators();
            nav.classList.add("selected");

        };
    })

    function ResetNavigators() {
        navigators.forEach(nav => {
            nav.classList.remove("selected");
        })
    }

    const options = {
        root: null,
        rootMargin: '0px',
        threshold: 0.5
    };


    const idea = document.getElementById("idea");
    const ideaobserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                ResetNavigators();
                navigators[0].classList.add("selected");
            }
            else {
                ResetNavigators();
            }
        });
    }, options);
    ideaobserver.observe(idea);

    const gallery = document.getElementById("gallery");
    const galleryobserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                ResetNavigators();
                navigators[1].classList.add("selected");
            }
        });
    }, options);
    galleryobserver.observe(gallery);

    const form = document.getElementById("form");
    const formobserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                ResetNavigators();
                navigators[2].classList.add("selected");
            }
        });
    }, options);
    formobserver.observe(form);

    const newway = document.getElementById("new-process");
    const swipe = document.getElementById("swipe-indicator");
    const newwayobserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                swipe.style.display = "none";
            } else {
                swipe.style.removeProperty("display");
            }
        });
    }, options);
    newwayobserver.observe(newway);


});
