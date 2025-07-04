class ButtonComponent < ApplicationComponent
  BASE_CLASSES = 'inline-flex items-center gap-2 text-sm rounded-md transition-colors focus:outline-none focus-visible:ring-2 focus-visible:ring-offset-2'
  VARIANTS = {
    variant: {
      primary: 'px-4 py-2 bg-blue-600 text-white hover:bg-blue-700 focus-visible:ring-blue-500',
      default: 'px-4 py-2 bg-white border border-gray-300 hover:bg-gray-50 focus-visible:ring-gray-500',
      destructive: 'px-4 py-2 bg-red-600 text-white hover:bg-red-700 focus-visible:ring-red-500'
    }
  }.freeze

  def initialize(
    variant: :default,
    shadow: false,
    as: :button,
    **html_attributes
  )
    @variant = variant
    @shadow = shadow
    @as = as
    @html_attributes = html_attributes
  end

  private

  attr_reader :variant, :shadow, :as, :html_attributes

  def component_classes
    cn(
      BASE_CLASSES,
      VARIANTS.dig(:variant, variant),
      shadow ? 'shadow-sm' : nil
    )
  end

  def component_attributes
    attrs = html_attributes.dup
    attrs[:class] = cn(component_classes, attrs[:class])
    attrs
  end
end
