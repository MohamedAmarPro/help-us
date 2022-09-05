import { Controller } from "@hotwired/stimulus"
import { bottom } from "@popperjs/core";

// Connects to data-controller="hide-button"
export default class extends Controller {
  connect() {
    this.lastScroll = window.pageYOffset;
  }

  scrollDown(){
    let st = window.pageYOffset
     if (st < this.lastScroll){
      console.log("UP")
      this.element.style.bottom = "100px";
     }
     else if (st > this.lastScroll) {
      console.log("DOWN")
      this.element.style.bottom = "20px";
     }
    this.lastScroll = st

  }
}
