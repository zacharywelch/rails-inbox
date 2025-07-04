class IconsComponentPreview < ViewComponent::Preview
  # @label Mail Icon
  # @param size select { choices: ["xs", "sm", "md", "lg", "xl", "xxl"] }
  # @param css_class select { choices: ["text-gray-400", "text-blue-600", "text-red-600", "text-yellow-400"] }
  def mail(size: :sm, css_class: "text-gray-400")
    render Icons::MailComponent.new(size: size.to_sym, class: css_class)
  end

  # @label Star Icon
  # @param size select { choices: ["xs", "sm", "md", "lg", "xl", "xxl"] }
  # @param filled toggle
  # @param css_class select { choices: ["text-gray-400", "text-yellow-400", "text-blue-600"] }
  def star(size: :sm, filled: false, css_class: "text-gray-400")
    render Icons::StarComponent.new(size: size.to_sym, filled: filled, class: css_class)
  end

  # @label Arrow Left Icon
  # @param size select { choices: ["xs", "sm", "md", "lg", "xl", "xxl"] }
  # @param css_class select { choices: ["text-gray-400", "text-blue-600", "text-red-600"] }
  def arrow_left(size: :sm, css_class: "text-gray-400")
    render Icons::ArrowLeftComponent.new(size: size.to_sym, class: css_class)
  end
end
