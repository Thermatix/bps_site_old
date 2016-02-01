module Components
  module Landing
    class Action_Bar < Base

      param current_section: :about

      define_state display_login: false

      def render

        div do
          section class_name: m_app + m_row + m_z(1) +  "dark-primary-color" do#,style: {backgroundColor: "#424242"} do

            Navigation selection: params.current_section

            Title value: params.current_section

            section class_name: "mui-col-md-3" do
              handle :click, :login do
                button class_name: "mui-btn" do
                  "Login"
                end
              end
            end

          end

          Login_Modal display_login: state.display_login, action_bar: self

        end
      end

      def handle_click
        state.display_login!(true)
      end


    end
  end
end
