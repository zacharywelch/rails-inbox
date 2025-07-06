import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['emailList', 'emailDetail']
  static classes = ['mobile']
  static values = { selectedId: String }

  selectEmail({ params: { emailId } }) {
    if (this.selectedIdValue == emailId) return

    this.selectedIdValue = emailId
    this.showDetailPanel()
  }

  backToInbox(event) {
    event.preventDefault()
    this.selectedIdValue = ''
    this.showListPanel()
  }

  // Private methods

  selectedIdValueChanged() {
    const selectedElement = this.element.querySelector('.border-blue-600')
    if (selectedElement) {
      selectedElement.classList.remove('border-l-4', 'border-blue-600')
    }
  }

  showDetailPanel() {
    this.emailListTarget.classList.add(...this.mobileClasses)
    this.emailDetailTarget.classList.remove(...this.mobileClasses)
  }

  showListPanel() {
    this.emailListTarget.classList.remove(...this.mobileClasses)
    this.emailDetailTarget.classList.add(...this.mobileClasses)
  }
}
