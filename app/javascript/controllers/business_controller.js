import {
  Controller
} from "stimulus"

export default class extends Controller {
  static targets = ["spec", "source"]

  insert() {
    const category = this.sourceTarget.value
    const url = `/${category.toLowerCase()}_specifications.html`

    fetch(url)
      .then(response => response.text())
      .then(html => {
        this.specTarget.innerHTML = html
      })
  }
}