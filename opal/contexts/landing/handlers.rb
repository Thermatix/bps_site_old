Ruta::Handlers.define_for :landing do

  handle :action_bar do |params,url|

  end

  handle :view_port do |params,url|
    if %w{main gallery syllabus}.include? params[:context]
      mount params[:context]
    end
  end
end

Ruta::Handlers.define_for :main do

end

Ruta::Handlers.define_for :gallery do

end

Ruta::Handlers.define_for :syllabus do

end
