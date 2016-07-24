Rails.application.routes.draw do

  root 'projects#index'
  resources :users do
    resources :pledges
  end

  resources :projects do
    resources :rewards
    resources :pledges
  end

  resources :rewards do
    resources :pledges
  end

  resources :sessions

  resources :categories, only: [:index, :show]


  # get 'users/index'
  #
  # get 'users/new'
  #
  # get 'users/update'
  #
  # get 'users/destroy'
  #
  # get 'users/create'
  #
  # get 'users/edit'
  #
  # get 'users/show'
  #
  # get 'rewards/index'
  #
  # get 'rewards/new'
  #
  # get 'rewards/update'
  #
  # get 'rewards/destroy'
  #
  # get 'rewards/create'
  #
  # get 'rewards/edit'
  #
  # get 'rewards/show'
  #
  # get 'rewardss/index'
  #
  # get 'rewardss/new'
  #
  # get 'rewardss/update'
  #
  # get 'rewardss/destroy'
  #
  # get 'rewardss/create'
  #
  # get 'rewardss/edit'
  #
  # get 'rewardss/show'
  #
  # get 'pledges/index'
  #
  # get 'pledges/new'
  #
  # get 'pledges/update'
  #
  # get 'pledges/destroy'
  #
  # get 'pledges/create'
  #
  # get 'pledges/edit'
  #
  # get 'pledges/show'
  #
  # get 'projects/index'
  #
  # get 'projects/new'
  #
  # get 'projects/update'
  #
  # get 'projects/destroy'
  #
  # get 'projects/create'
  #
  # get 'projects/edit'
  #
  # get 'projects/show'
  #
  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
