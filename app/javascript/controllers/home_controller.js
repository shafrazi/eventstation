import {
  Controller
} from "stimulus"

export default class extends Controller {
  greet() {
    console.log("hello! it works!")
  }
}