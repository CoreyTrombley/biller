module ApplicationHelper

  def intellinav
    if @auth.present?
      link_to(@auth.email.capitalize, login_path, :method => :delete, :confirm => 'Realy, you want to log off?')
    else
      link_to('Login', login_path)
    end
  end
end
