Rails.application.routes.draw do
  scope '/(:locale)', defaults: { locale: 'en' }, constraints: { locale: /en|es/ } do
    resources :posts

    get '/', to: 'welcome#index'
  end
end
