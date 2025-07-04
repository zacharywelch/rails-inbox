class AvatarComponent < ApplicationComponent
  BASE_CLASSES = 'flex-shrink-0'

  SIZES = {
    sm: 'h-6 w-6 text-xs',
    default: 'h-8 w-8 text-sm',
    lg: 'h-10 w-10 text-base'
  }.freeze

  def initialize(
    name:,
    avatar: nil,
    size: :lg,
    **html_attributes
  )
    @name = name
    @avatar = avatar
    @size = size
    @html_attributes = html_attributes
  end

  private

  attr_reader :name, :avatar, :size, :html_attributes

  def component_classes
    cn(BASE_CLASSES)
  end

  def avatar_classes
    cn(
      SIZES[size],
      'rounded-full bg-blue-600 flex items-center justify-center'
    )
  end

  def text_classes
    'font-medium text-white'
  end

  def component_attributes
    attrs = html_attributes.dup
    attrs[:class] = cn(component_classes, attrs[:class])
    attrs
  end

  def initials
    return '?' if name.blank?

    # Match React logic: get initials from name or email
    clean_name = name.include?('@') ? name.split('@').first : name

    # Take first letters of first and last word
    words = clean_name.split(' ')
    if words.length >= 2
      words.first.first.upcase + words.last.first.upcase
    else
      # Just take first two letters if one word
      clean_name.first(2).upcase
    end
  end
end
