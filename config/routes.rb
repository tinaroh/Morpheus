Morpheus::Application.routes.draw do

  match "/" => "home#index"
  match "/about" => "home#about"
  match "/calculate" => "home#calculate"
  match "/result" => "home#result"
  match "/terms" => "home#terms"

end
