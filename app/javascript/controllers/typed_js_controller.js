import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["'It is in your hands, to make a better world for all who live in it.'", "Nelson Monfort"],
      typeSpeed: 45,
      loop: true,
      fadeOut: true,
    })
  }
}
