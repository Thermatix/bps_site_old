module Components
  module Landing
    class Listing < Base

      define_state listing: {}

      before_mount do
        get_listing
      end

      def render
        div style: scrollable do
          ul class_name: m_col(12) ,style: no_bullets do
            state.listing.each do |id,item|
              li id: id do
                h2 class_name: m_div("bottom") do
                  item[:date] + ' - ' + item[:title]
                end

                p do
                  item[:body]
                end
              end
            end
          end
        end
      end

      def get_listing
        Request.get('/api/syllabus') do |request|
          handle_response_for request do |response|
            state.listing! response.json
          end
        end
      end

    end
  end
end
