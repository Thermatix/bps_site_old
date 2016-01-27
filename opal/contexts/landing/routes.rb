Ruta::Router.define do
  for_context :landing do
    # map :i_switch, '/buttons/:switch_to', to: [:scroller,:buttons]
    map :v_switch, '/nav/:context', to: [:action_bar,:view_port]
  end


end
