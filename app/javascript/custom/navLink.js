function initNavShow() {
  const divider = document.querySelector(".nav-divider");
  const nav = document.querySelector(".js-nav");
  const isCloseToTop = divider.getBoundingClientRect().top < 0;

    if (isCloseToTop) {
      nav.classList.replace("js-navDontShow", "js-navShow");
    } else {
      nav.classList.replace("js-navShow", "js-navDontShow");
    }

}

window.addEventListener('scroll', initNavShow);
initNavShow()
