module ApplicationHelper
  def auth_token
    string = "<input type='hidden' name='authenticity_token' value='#{form_authenticity_token}'/>".html_safe
    p string
  end
end
