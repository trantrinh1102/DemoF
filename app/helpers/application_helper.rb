module ApplicationHelper
  def full_title page_title = ""
    base_title = t "static_page.title"
    page_title.empty? ? base_title : (page_title + " | " + base_title)
  end

  def number_order page, index
    page.blank? ? 1 + index : (page.to_i -1) * Settings.page_per + 1 + index
  end
end
