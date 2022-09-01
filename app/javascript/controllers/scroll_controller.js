import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core"

// Connects to data-controller="scroll"
export default class extends Controller {
  static targets = ["homepage"]

  connect() {
  }

  // scrollDown() {
  //   if ( window.scrollY > 50 )
  //     window.scrollTo({top: 747, behavior: 'smooth'})
  //   end
  // }

  // scrollUp() {
  //   if ( window.scrollY < 737 )
  //     window.scrollTo({top: 0, behavior: 'instant'})
  //   end
  //   }
}
