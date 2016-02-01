module Components
  module Landing
    class Slider < Base

      define_state selection: :about

      def render
        div class_name: m_panel + m_col(6) + m_colof(3) do
          section class_name: m_row + m_colof(1) do
            selector[state.selection][:class].render
          end
          section class_name: m_row + m_colof(3) do
            selector.each do |item,data|
              handle :click, item do
                button class_name: m_b_primary do
                  data[:text]
                end
              end
            end
          end
        end
      end

      def selector
        {
          about: {
            text: "About us",
            class: About_Us
          },
          contact: {
            text: "Contact us",
            class: Contact_Us
          },
          news: {
            text: "News",
            class: News
          }
        }
      end

      def handle_click e,sect
        state.selection!(sect)
      end

    end
  end
end
