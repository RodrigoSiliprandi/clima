Rails.application.routes.draw do

  get "busca_clima/buscar_atual"
  get "busca_clima/buscar_proximas_horas"
  get "busca_clima/buscar_proximos_dias"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
