const slideList = document.querySelectorAll(".js-slide li");
const slideMainImg = document.querySelectorAll(".js-main-img div");
// slideMainImg[0].classList.add("active");
// console.log("start-slide");

function initSlides(index) {
  slideMainImg.forEach((div) => {
    div.classList.remove("active");
  });
  // console.log("inside-initSlide");

  slideMainImg[index].classList.add("active");


}

slideList.forEach((thumb, index) => {
  thumb.addEventListener("click", () => {
    initSlides(index);
  })
  // console.log("inside-forEach-slideList");
});
