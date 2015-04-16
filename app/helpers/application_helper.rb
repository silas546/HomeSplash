module ApplicationHelper
  def random_background_image
    "assets/background_#{rand(10)}.jpg"
  end
end
