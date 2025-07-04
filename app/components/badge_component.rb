class BadgeComponent < ApplicationComponent
  VARIANTS = {
    variant: {
      secondary: 'inline-block px-2 py-1 text-xs bg-gray-100 text-gray-700 rounded-full'
    }
  }.freeze

  def initialize(
    badge: nil,
    variant: :secondary,
    **html_attributes
  )
    @badge = badge
    @variant = variant
    @html_attributes = html_attributes
  end

  private

  attr_reader :badge, :variant, :html_attributes

  def component_classes
    VARIANTS.dig(:variant, variant)
  end

  def component_attributes
    attrs = html_attributes.dup
    attrs[:class] = cn(component_classes, attrs[:class])
    attrs
  end
end
