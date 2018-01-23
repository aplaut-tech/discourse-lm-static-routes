after_initialize do
  Discourse::Application.routes.draw do
    get "rules" => "static#show", id: "tos", as: 'rules', constraints: { format: /(json|html)/ }
  end
end
