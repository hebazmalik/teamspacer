const smoothScroll = () => {
  const downButton = document.querySelector(".fa-angle-double-down");
  const scrollToContainer = document.querySelector(".container-progress-bar");
  
  if (downButton) {
    downButton.addEventListener("click", () =>{
      scrollToContainer.scrollIntoView({ behaviour: "smooth", block: "start", inline: "nearest" });
    });
  };
};

export { smoothScroll };