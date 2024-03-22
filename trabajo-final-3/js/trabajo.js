const slider = document.querySelector('.slider');
const slides = slider.querySelectorAll('.slide');
let currentSlide = 0;

function nextSlide() {
  slides[currentSlide].style.opacity = 0;
  currentSlide = (currentSlide + 1) % slides.length;
  slides[currentSlide].style.opacity = 1;
}

setInterval(nextSlide, 8000); // Change slide every 4 seconds