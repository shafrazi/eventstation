module ApplicationHelper
  def beautify_field(field)
    field.split("_").join(" ").capitalize
  end
end
