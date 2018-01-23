after_initialize do
  Rails.application.routes.draw do
    get "rules" => "static#show", id: "tos", as: 'rules', constraints: { format: /(json|html)/ }
  end
end
