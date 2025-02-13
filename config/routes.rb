Rails.application.routes.draw do

  get("/", { :controller => "dice", :action => "homepage" })

  # Dynamic route
  get("/dice/:dice_param/:sides_param", { :controller => "dice", :action => "roll" })

end
