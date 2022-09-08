import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="click-button"
export default class extends Controller {
  static targets = ["status", "input_price"]
  connect() {

  }

  highlight() {
    console.log("hello")
    this.element.classList.toggle("card-category-click")
  }

  highlightOrg() {
    this.element.classList.toggle("card-organization-click")

    if (this.element.classList.contains("card-organization-click")) {
      this.input_priceTarget.removeAttribute("hidden")
      this.input_priceTarget.focus();
    }
    else {
     
      this.input_priceTarget.setAttribute("hidden", "");

    }

    if(this.statusTarget.value === 'false') {
      this.statusTarget.value = "true"
    }else {
      this.statusTarget.value = "false"
    }

  }

}
