document.addEventListener("DOMContentLoaded", function(){

  const slider = document.querySelector('.slider');
  let counter =0;

  setInterval(()=>{
      slider.style.transition = "transform 0.5s ease-in-out";
      slider.style.transform= `translateX(${-counter * 100}%)`;

      counter++;

      if(counter === slider.children.length){
          setTimeout(()=>{
              slider.style.transition = "none";
              slider.style.transform = 'translateX(0)';
              counter = 0;
          },500)
      }
  },3000);
}); 