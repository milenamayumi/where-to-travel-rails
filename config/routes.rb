Rails.application.routes.draw do
  match 'home' => 'home#index', :via => [:get, :post]
  get 'destination' => 'home#destination'
  get 'home/thankyou'

end
