module ApplicationHelper

  def full_title(page_title)
    return "Ruby on Rails Tutorial Sample App" if page_title.empty?
    "Ruby on Rails Tutorial Sample App | #{page_title}"
  end

end
