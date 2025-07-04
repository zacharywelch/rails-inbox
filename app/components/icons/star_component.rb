module Icons
  class StarComponent < IconComponent
    def initialize(filled: false, **args)
      @filled = filled
      super(**args)
    end

    private

    attr_reader :filled

    def default_viewbox
      '0 0 20 20'  # Heroicons viewbox
    end

    def component_classes
      cn(
        super,
        'fill-current' => filled  # Auto-add when filled
      )
    end

    def star_path
      'M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z'
    end
  end
end
