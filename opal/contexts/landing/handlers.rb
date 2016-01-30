Ruta::Handlers.define_for :landing do
  sub_contexts = %w{about gallery syllabus}
  handle :action_bar do |params,url|
    if sub_contexts.include? params[:sub_context]
      Components::Landing::Action_Bar current_section: params[:sub_context]
    else
      Components::Landing::Action_Bar
    end
  end

  handle :view_port do |params,url|
    if sub_contexts.include? params[:sub_context]
      mount params[:sub_context]
    else
      mount :about
    end
  end
end

Ruta::Handlers.define_for :about do

end

Ruta::Handlers.define_for :gallery do

end

Ruta::Handlers.define_for :syllabus do

end
