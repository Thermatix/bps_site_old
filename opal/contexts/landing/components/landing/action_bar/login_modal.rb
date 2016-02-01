module Components
  module Landing
    class Action_Bar::Login_Modal < Base

      param display_login: false
      param :action_bar


      def render
        if params.display_login
          modal_style = {
            position: 'fixed',
          }
          handle :MouseLeave do
            section id:"login_modal", class_name: m_panel + m_align("top") + m_z(1) + m_col(4) + m_colof(8) , style: modal_style do
              "Login MODAL"
            end
          end
        end
      end

      def handle_MouseLeave
        params.action_bar.state.display_login!(false)
      end

    end
  end
end
