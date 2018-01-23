# name: lm-static-routes
# version: 0.0.1
# authors: Shoppilot team

after_initialize do
  Discourse::Application.routes.append do
    get "rules" => "static#show", id: "tos", as: 'rules', constraints: { format: /(json|html)/ }
  end
end
