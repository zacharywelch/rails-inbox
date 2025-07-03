import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['emailList', 'emailDetail']
  static values = { selectedId: String }

  selectEmail(event) {
    const clickedEmailId = event.currentTarget.dataset.emailId
    this.clearSelection()
    this.selectedIdValue = clickedEmailId
    this.showDetailPanel()
  }

  backToInbox(event) {
    event.preventDefault()
    this.clearSelection()
    this.showListPanel()
  }

  // Private methods

  clearSelection() {
    this.selectedIdValue = ''
    const selectedElement = this.element.querySelector('.border-blue-600')
    if (selectedElement) {
      selectedElement.classList.remove('border-l-4', 'border-blue-600')
    }
  }

  showDetailPanel() {
    this.emailListTarget.classList.add('hidden', 'md:flex')
    this.emailDetailTarget.classList.remove('hidden', 'md:flex')
  }

  showListPanel() {
    this.emailListTarget.classList.remove('hidden', 'md:flex')
    this.emailDetailTarget.classList.add('hidden', 'md:flex')
  }
}
