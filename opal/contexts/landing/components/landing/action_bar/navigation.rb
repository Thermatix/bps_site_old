module Components
  module Landing
    class Action_Bar::Navigation < Base
      param :selection

      def render
        section class_name: "mui-col-md-3 mui-col-md-offset-1" do
          %w{about gallery syllabus}.delete_if { |el| el ==  params.selection}
          .each do |sub_context|
            handle :click, sub_context do
              button class_name: "mui-btn mui-btn--large" do
                sub_context
              end
            end
          end
        end
      end

      def handle_click e, sub_context
          Ruta.navigate_to_ref :landing,:v_switch, sub_context
      end

    end
  end
end
