Ruta::Context.define :landing do
  component :action_bar do
    Components::Landing::Action_Bar
  end

  sub_context :view_port, :first_view

end

Ruta::Context.define :main do
  component :view do
    Components::Landing::Slider
  end

  component :footer do
    Components::Landing::Footer
  end
end

Ruta::Context.define :gallery do

end


Ruta::Context.define :syllabus do

end
