# name: lm-static-routes
# version: 0.0.1
# authors: Shoppilot team

after_initialize do
  Discourse::Application.routes.prepend do
    get 'rules' => 'static#show', id: 'tos', constraints: { format: /(json|html)/ }
    get 'tos' => redirect('/rules'), as: 'tos_override'
  end
end
