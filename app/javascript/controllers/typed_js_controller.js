import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ['La force du don humanitaire ne demeure pas que dans le montant, mais bien dans le bon emploi du montant.', "Dans l'humanitaire, le coeur ne suffit pas ; il nous faut aussi des fonds.", 'Si j’aide une seule personne à avoir de l’espoir, je n’aurais pas vécu en vain.', "À travers l‘autre, nos enfants, nos parents, nos amis, c‘est aussi l‘Humanité que nous aidons."],
      typeSpeed: 50,
      loop: true,
      fadeOut: true,
    })
  }
}
