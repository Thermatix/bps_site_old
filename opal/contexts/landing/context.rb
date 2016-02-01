Ruta::Context.define :landing do
  component :action_bar do
    Components::Landing::Action_Bar
  end

  sub_context :view_port, :about

end

Ruta::Context.define :about do
  component :view do
    Components::Landing::Slider
  end
end

Ruta::Context.define :gallery do
  component :images do
    Components::Landing::Images
  end
end


Ruta::Context.define :syllabus do
  component :listing do
    Components::Landing::Listing
  end
end
