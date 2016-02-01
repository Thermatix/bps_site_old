module Components
  module Landing
    class Action_Bar::Title < Base

      param :value

      def render
        style =
          {
            fontFamily: "\"Times New Roman\", Times, serif"
          }
        h1 class_name: m_text("center") + m_col(6) + m_colof(3), style: style do
          {
            about: "Barking Photographic Society",
            gallery: "Gallery",
            syllabus: "Club Syllabus"
          }[params.value]
        end
      end

    end
  end
end
