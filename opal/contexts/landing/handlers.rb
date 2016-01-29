Ruta::Handlers.define_for :landing do

  handle :action_bar do |params,url|
    Components::Landing::Action_Bar current_section: params[:sub_context]
  end

  handle :view_port do |params,url|
    if %w{landing gallery syllabus}.include? params[:sub_context]
      mount params[:sub_context]
    end
  end
end

Ruta::Handlers.define_for :main do

end

Ruta::Handlers.define_for :gallery do

end

Ruta::Handlers.define_for :syllabus do

end
