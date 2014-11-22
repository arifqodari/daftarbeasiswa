module ApplicationHelper

  def title(page_title)
    content_for :title, page_title.to_s
  end

  def show_deadline(datetime)
    if datetime < (DateTime.now + 1.month) and datetime > DateTime.now
      html = "<span class='alert label'>"
      html += datetime.strftime("%d %B %Y")
      html += "</span>"
    else
      html = datetime.strftime("%d %B %Y")
    end

    return html.html_safe
  end

  def current_user
    return session[:user_id].present?
  end

end
