Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :comments
  resources :projects
  resources :status
  resources :teams
  resources :ticket

  get '/tickets/:project_id' => 'ticket#ticket_by_team'
  get '/commentsByTicketId/:ticket_id' => 'comments#comments_by_ticket_id'

end
