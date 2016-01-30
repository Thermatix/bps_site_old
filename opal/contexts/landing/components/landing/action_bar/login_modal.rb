module Components
  module Landing
    class Action_Bar::Login_Modal < Base

      param display_modal: false

      define_state display_login: false

      before_mount do
        state.display_login! params.display_modal
      end

      before_update do
        state.display_login! params.display_modal
      end

      def render
        if state.display_modal
          modal_style = {
            position: 'fixed',
          }
          handle :MouseLeave do
            section id:"login_modal", class_name: "mui-panel mui--align-top mui--z1 mui-col-md-4 mui-col-md-offset-8", style: modal_style do
              "Login MODAL"

            end
          end
        end
      end

      def handle_MouseLeave
        state.display_login!(false)
      end

    end
  end
end
