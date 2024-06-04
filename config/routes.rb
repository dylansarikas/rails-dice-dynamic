Rails.application.routes.draw do

  get "/dice/:num/:sides" => "dice#show"
  get "/" => "dice#home"

end
