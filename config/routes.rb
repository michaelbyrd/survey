Rails.application.routes.draw do
  resources :surveys do
    member do
      get 'take_survey'
      post 'submit_answers'
    end
  end
end
