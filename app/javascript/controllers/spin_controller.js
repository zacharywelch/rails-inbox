import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['text', 'spinner']
  static values = { text: String }

  connect() {
    if (!this.hasTextValue) {
      this.textValue = this.textTarget?.textContent ?? 'Loading...'
    }
  }

  show(event) {
    event.preventDefault()

    this.element.classList.add('pointer-events-none', 'opacity-50')

    if (this.hasTextTarget) {
      this.textTarget.textContent = this.textValue
    }
    if (this.hasSpinnerTarget) {
      this.spinnerTarget.classList.remove('hidden')
    }

    // Wait .5 seconds for demo purposes
    setTimeout(() => {
      window.location.href = this.element.href
    }, 500)
  }
}
