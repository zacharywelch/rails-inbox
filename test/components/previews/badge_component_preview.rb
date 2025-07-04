class BadgeComponentPreview < ViewComponent::Preview
  # @label Badge
  # @param text text
  def badge(text: "Important")
    render BadgeComponent.new(badge: text)
  end
end
