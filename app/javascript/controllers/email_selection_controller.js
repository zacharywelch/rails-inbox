import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["item", "emailList"]
  static classes = ["selected"]

  select(event) {
    // Remove selection from all items
    this.itemTargets.forEach(item => {
      item.classList.remove(...this.selectedClasses)
    })

    // Add selection to clicked item
    const emailItem = event.currentTarget.closest("[data-email-selection-target='item']")
    emailItem.classList.add(...this.selectedClasses)

    // Update the clicked email to show as read
    const emailLink = emailItem.querySelector('a')
    emailLink.classList.remove('bg-blue-50')
    emailLink.classList.add('bg-white')
    emailLink.querySelectorAll('.font-bold').forEach(el => {
      el.classList.remove('font-bold')
      el.classList.add('font-medium')
    })

    // Handle mobile responsive: hide list, show detail
    this.emailListTarget.classList.add('hidden', 'md:flex')

    const emailDetail = document.getElementById('email_detail')
    if (emailDetail) {
      emailDetail.classList.remove('hidden')
      emailDetail.classList.add('flex', 'md:flex')
    }
  }

  backToInbox(event) {
    // Handle mobile responsive: show list, hide detail
    this.emailListTarget.classList.remove('hidden')
    this.emailListTarget.classList.add('flex', 'md:flex')

    const emailDetail = document.getElementById('email_detail')
    if (emailDetail) {
      emailDetail.classList.add('hidden', 'md:flex')
      emailDetail.classList.remove('flex')
    }

    // Remove all selections
    this.itemTargets.forEach(item => {
      item.classList.remove(...this.selectedClasses)
    })
  }
}
