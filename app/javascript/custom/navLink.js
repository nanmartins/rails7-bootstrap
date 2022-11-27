function initNavShow() {
  const divider = document.querySelector(".nav-divider");
  const nav = document.querySelector(".js-nav");
  const targetEl = document.querySelector('.home-second-body');
  const changeToRose = targetEl.getBoundingClientRect().top < 87;
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

}

window.addEventListener('scroll', initNavShow);
initNavShow()
