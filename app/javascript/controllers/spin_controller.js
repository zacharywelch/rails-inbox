import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['text', 'spinner']
  static values = { text: { type: String, default: 'Loading...' } }

  show(event) {
    event.preventDefault()

    this.element.classList.add('pointer-events-none', 'opacity-50')
    this.textTarget.textContent = this.textValue
    this.spinnerTarget.classList.remove('hidden')

    setTimeout(() => {
      window.location.href = this.element.href
    }, 500)
  }
}
