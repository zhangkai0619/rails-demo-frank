Rails.application.routes.draw do
  get 'posts/show'
  root 'posts#show'
end
