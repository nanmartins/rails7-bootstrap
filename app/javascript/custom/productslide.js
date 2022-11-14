const slideList = document.querySelectorAll(".js-slide li");
const slideMainImg = document.querySelectorAll(".js-main-img div");
// slideMainImg[0].classList.add("active");

function initSlides(index) {
  slideMainImg.forEach((div) => {
    div.classList.remove("active");
  });

  slideMainImg[index].classList.add("active");


}

slideList.forEach((thumb, index) => {
  thumb.addEventListener("click", () => {
    initSlides(index);
  })
});
