module Components
  module Landing
    class Action_Bar < Base

      param current_section: :about

      define_state display_login: false

      def render

        div do

          section class_name: "mui-appbar mui-row mui--z1" do#,style: {backgroundColor: "#424242"} do

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

          Login_Modal display_modal: state.display_login

        end
      end

      def handle_click
        state.display_login!(true)
      end



    end
  end
end
