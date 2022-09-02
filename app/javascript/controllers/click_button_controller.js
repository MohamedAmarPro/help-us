import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="click-button"
export default class extends Controller {
  connect() {
    console.log("Yo");
  }

  highlight() {
    console.log("hello")
    this.element.classList.toggle("card-category-click")
  }
}
