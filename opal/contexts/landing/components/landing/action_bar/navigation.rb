module Components
  module Landing
    class Action_Bar::Navigation < Base
      param :selection

      def render
        ul class_name: "mui-tabs__bar" do
          %w{about gallery syllabus}
          .each do |sub_context|
            handle :click, sub_context do
              li class_name: active?(sub_context) + m_col(1) + m_center do
                sub_context
              end
            end
          end
        end
      end

      def active? sub_context
        params.selection == sub_context ? "mui--is-active " : ""
      end

      def handle_click e, sub_context
          Ruta.navigate_to_ref :landing,:v_switch, sub_context
      end

    end
  end
end
