
document.addEventListener("DOMContentLoaded", (event) => {
    let split = SplitText.create("#thanks", { type: "words, chars" });
    const btn = document.getElementById("sub-btn");
    btn.onclick = () => {
        gsap.to(split.chars, {
            duration: .3,
            y: -150,         // animate from 100px below
            autoAlpha: 1,   // fade in from opacity: 0 and visibility: hidden
            stagger: 0.03,  // 0.05 seconds between each
            repeat: 1,
            repeatDelay: 2,
            yoyo: true,
        });
    }

    // gsap.from("#counter", {
    //     innerText: 0,
    //     duration: 2,
    //     ease: "power4.Out",
    //     snap: {
    //         innerText: 1
    //     },
    //     stagger: 0.1,
    // });

});