module Icons
  class SpinnerComponent < IconComponent
    private

    def component_classes
      cn(super, 'animate-spin')
    end

    def default_stroke
      'currentColor'
    end

    def default_fill
      'none'
    end
  end
end
