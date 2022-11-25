

function initTitleSlide() {
  const title = document.querySelectorAll('.js-animation');
  const windowHeigh = window.innerHeight * 0.7;

  title.forEach((title) => {
    const titleTop = title.getBoundingClientRect().top;
    const visible = (titleTop - windowHeigh) < 100;

      if(visible) {
        title.classList.add('js-animation-active');
      } else {
        title.classList.remove('js-animation-active');
      }
  })
}

window.addEventListener('scroll', initTitleSlide);

initTitleSlide();
