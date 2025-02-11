Rails.application.routes.draw do
  get "/", to: "dice#home", as: "root"
  get "/dice/:dice_count/:sides", to: "dice#roll"
end
