module Components
  module Landing
    class Action_Bar < Base

      param current_section: :landing

      def render
        div do
          section class_name: "mui-appbar mui-row mui--z1" do#,style: {backgroundColor: "#424242"} do
            section class_name: "mui--appbar-height" do
              buttons = %w{landing gallery syllabus}
              buttons.delete(params.current_section)
              buttons.each do |sub_context|
                handle :click, sub_context do
                  button class_name: "mui-btn mui-btn--large" do
                    sub_context
                  end
                end
              end
            end
          end

        end
      end
      def handle_click e,sub_context
        Ruta.navigate_to_ref :landing,:v_switch, sub_context
      end
    end
  end
end
