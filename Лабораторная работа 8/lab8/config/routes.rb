Rails.application.routes.draw do
  get 'palindrome/input'

  get 'palindrome/output'

  root 'palindrome#input'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
