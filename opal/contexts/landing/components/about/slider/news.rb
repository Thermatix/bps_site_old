module Components
  module Landing
    class Slider::News < Base

      define_state listing: {}

      before_mount do
        div style: scrollable do
          ul class_name: m_col(12) ,style: no_bullets do
            state.listing.each do |id,item|
              li id: id do
                h2 class_name: m_div("bottom") do
                  item[:date] + ' - ' + item[:title]
                end

                p style: scrollable.merge({height: "200px"}) do
                  item[:body]
                end
              end
            end
          end
        end
      end

      def render
        "news"
      end


      def get_listing
        Request.get('/api/news/public') do |request|
          handle_response_for request do |response|
            state.listing! response.json
          end
        end
      end
    end
  end
end
