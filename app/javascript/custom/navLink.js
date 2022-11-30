function initNavShow() {
  const divider = document.querySelector(".nav-divider");
  const nav = document.querySelector(".js-nav");
  const targetEl = document.querySelector('.home-second-body');
  const targetFooter = document.querySelector(".footer-medias-main-container");

  const changeToRose = targetEl.getBoundingClientRect().top < 87;
  const backToWhite = targetFooter.getBoundingClientRect().top < 87;
  const isCloseToTop = divider.getBoundingClientRect().top < 0;


    if (isCloseToTop) {
      nav.classList.replace("js-navDontShow", "js-navShow");
    } else {
      nav.classList.replace("js-navShow", "js-navDontShow");
    }

    if (changeToRose) {
      nav.classList.replace("js-navShow", "js-navRose");
    } else {
      nav.classList.replace("js-navRose", "js-navShow");
    }

    if (backToWhite) {
      nav.classList.replace("js-navRose", "js-navWhite");
    } else {
      nav.classList.replace("js-navWhite", "js-navRose");
    }

}

window.addEventListener('scroll', initNavShow);
