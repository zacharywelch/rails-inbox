module ApplicationHelper
  def star_id(email, location)
    dom_id email, "star_#{location}"
  end
end
