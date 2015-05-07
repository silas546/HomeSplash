class HomeController < ApplicationController
  skip_before_filter :require_login
  def index
    @current_time = Time.now.stamp_like("Feb 1st 9:00 pm")
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
    @quip = Quote.all.sample.quip
    # Hi there
  end
end
