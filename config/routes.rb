Morpheus::Application.routes.draw do

  match "/" => "home#index"
  match "/about" => "home#about"
  match "/terms" => "home#terms"
  match "/result" => "home#result"

end
