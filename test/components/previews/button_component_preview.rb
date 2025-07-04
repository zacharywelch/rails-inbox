class ButtonComponentPreview < ViewComponent::Preview
  # @label Button
  # @param variant select { choices: ["default", "primary", "destructive"] }
  # @param shadow toggle
  # @param text text
  def button(variant: :default, shadow: false, disabled: false, text: "Click me")
    render ButtonComponent.new(
      variant: variant.to_sym,
      shadow: shadow,
      disabled: disabled
    ) do
      text
    end
  end
end
