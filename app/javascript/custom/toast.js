"use strict"

document.addEventListener("DOMContentLoaded", () => {
  function removeElems() {
    let elm = document.getElementById('toast');
  
    if(elm) {
      setTimeout(function() {
        elm.remove();
      }, 7000);
    }
  }
  
  removeElems();
});
