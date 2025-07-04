module Icons
  class IconComponent < ApplicationComponent
    BASE_CLASSES = 'shrink-0'

    SIZES = {
      xs: 'w-3 h-3',
      sm: 'w-4 h-4',
      md: 'w-5 h-5',
      lg: 'w-6 h-6',
      xl: 'w-8 h-8',
      xxl: 'w-16 h-16'
    }.freeze

    def initialize(size: :sm, **html_attributes)
      @size = size
      @html_attributes = html_attributes
    end

    private

    attr_reader :size, :html_attributes

    def component_classes
      cn(BASE_CLASSES, SIZES[size])
    end

    def component_attributes
      attrs = html_attributes.dup
      attrs[:class] = cn(component_classes, attrs[:class])
      attrs[:fill] ||= default_fill
      attrs[:stroke] ||= default_stroke
      attrs[:viewBox] ||= default_viewbox
      attrs.compact
    end

    # Override in subclasses
    def default_fill
      'currentColor'
    end

    def default_stroke
      nil
    end

    def default_viewbox
      '0 0 24 24'
    end
  end
end
