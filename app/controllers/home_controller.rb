class HomeController < ApplicationController
  def index
    @current_time = Time.now.to_formatted_s(:short)
    # homework - implement stamp gem
    @greet_message = case Time.now.hour
    when 5..11
      "Good Morning"
    when 12..15
      "Good Afternoon"
    when 16..19
      ["Buenas Afternoonas", "Good Afternoon", "Howdy"].sample
    else
      "Gnight!"
    end
  end
end
