module ApplicationHelper
  def logged_in?
    current_user.present?
  end

  def time_as_word time
    time.to_formatted_s(:long)
  end
end
