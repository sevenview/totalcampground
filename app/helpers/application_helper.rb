module ApplicationHelper
  def bootstrap_button(text, link, size: 'btn-sm', type: 'btn-link')
    link_to(text, link, class: "btn #{size} #{type}")
  end
end
