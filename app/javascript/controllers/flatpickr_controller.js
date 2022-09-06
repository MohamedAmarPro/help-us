import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = ["startDate", "endDate"]

  connect() {
    console.log("hello");

    flatpickr(this.startDateTarget, {
      mode: 'range',
      minDate: "today",
      dateFormat: "Y-m-d",
      inline: true,
      "plugins": [new rangePlugin({ input: this.endDateTarget})]
    })
  }

}
