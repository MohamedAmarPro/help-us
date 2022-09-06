import { Controller } from "@hotwired/stimulus"
import { bottom } from "@popperjs/core";

// Connects to data-controller="hide-button"
export default class extends Controller {
  connect() {
    this.lastScroll = window.pageYOffset;
  }

  scrollDown() {
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

  scrollNav() {
    let st = window.pageYOffset
     if (st < this.lastScroll){
      console.log("UP")
      this.element.style.opacity = "0.95";
      this.element.style.visibility = "visible";
     }
     else if (st > this.lastScroll) {
      console.log("DOWN")
      this.element.style.opacity = "0";
      this.element.style.visibility = "hidden";
     }
    this.lastScroll = st
  }
}
