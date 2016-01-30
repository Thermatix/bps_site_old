module Components
  module Landing
    class Action_Bar::Title < Base

      param :value

      def render
        h1 class_name: "mui--text-center mui-col-md-5" do
          {
            about: "Barking PhotoGraphic Society",
            gallery: "Gallery",
            syllabus: "Club Syllabus"
          }[params.value]
        end
      end

    end
  end
end
