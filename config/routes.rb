Danke::Application.routes.draw do
  root :to => 'messages#new'
  resource :messages
end
