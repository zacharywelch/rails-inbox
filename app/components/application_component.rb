class ApplicationComponent < ViewComponent::Base
  private

  # Helper method to merge CSS classes safely
  # Similar to React's clsx/cn utility
  def cn(*classes)
    classes.compact.join(" ")
  end
end
