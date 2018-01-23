after_initialize do
  Rails.application.routes.draw do
    get "rules" => "static#show", id: "tos", as: 'tos', constraints: { format: /(json|html)/ }
  end
end
