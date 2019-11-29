Rails.application.routes.draw do
	resources :posts do
		resources :comments, only: %i[create destroy]
	end

	root 'posts#index'
end
