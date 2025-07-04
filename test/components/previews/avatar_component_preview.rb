class AvatarComponentPreview < ViewComponent::Preview
  # @label Avatar
  # @param name text
  # @param size select { choices: ["sm", "default", "lg"] }
  # @param with_image toggle
  # @param custom_url text
  def avatar(name: "John Doe", size: :lg, with_image: false, custom_url: "")
    avatar_param = if custom_url.present?
      custom_url
    elsif with_image
      "https://github.com/shadcn.png"
    else
      nil
    end

    render AvatarComponent.new(
      name: name,
      size: size.to_sym,
      avatar: avatar_param
    )
  end
end
