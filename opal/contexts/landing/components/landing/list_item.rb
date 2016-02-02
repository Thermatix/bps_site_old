module Components
  module Landing
    class List_Item < Base
      param :title
      param :date
      param :body
      param :id

      def render
        li id: params[:id] do
          h2 class_name: m_div("bottom") do
            params[:date] + ' - ' + params[:title]
          end
          div style: scrollable.merge({height: "200px"})  do
            p {params[:body]}
          end
        end
      end
    end
  end
end
