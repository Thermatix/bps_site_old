module Components
  module Landing
    class Listing < Base

      define_state listing: []

      before_mount do
        get_listing
      end

      def render
        div style: scrollable do
          ul class_name: m_col(12) ,style: no_bullets do
            state.listing.each do |item|
              li do#class_name: m_panel do
                h2 class_name: m_div("bottom") do
                  item[:date] + ' - ' + item[:title]
                end

                p do
                  item[:info]
                end
              end
            end
          end
        end
      end

      def get_listing
        state.listing! [
          {
            title: "Some Event",
            date: "20/03/2015",
            info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            In vulputate fermentum nisl a fermentum.
            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            Sed in egestas mauris, vitae lobortis elit.
            Sed vestibulum, nisl id mattis aliquam, ex lacus bibendum magna, vitae iaculis justo elit ac ipsum.
            Vestibulum viverra finibus diam ac ultricies.
            Donec neque felis, euismod a commodo ac, aliquam quis quam.
            Etiam porttitor felis mauris.
            Sed quis tortor ex.
            Etiam accumsan felis in arcu imperdiet tempus eu id ante.
            Duis est eros, pellentesque ac imperdiet sit amet, rutrum vitae magna.
            Proin hendrerit felis id mauris maximus euismod.
            Curabitur vestibulum, dui eget vulputate elementum, nisl urna accumsan turpis, nec tincidunt nunc elit a ante.
            Mauris sed viverra nunc, ut suscipit est.
            Donec convallis aliquet magna, sit amet sodales odio euismod non."
          },{
            title: "Some Other Event",
            date: "19/01/2015",
            info: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            In vulputate fermentum nisl a fermentum.
            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            Sed in egestas mauris, vitae lobortis elit.
            Sed vestibulum, nisl id mattis aliquam, ex lacus bibendum magna, vitae iaculis justo elit ac ipsum.
            Vestibulum viverra finibus diam ac ultricies.
            Donec neque felis, euismod a commodo ac, aliquam quis quam.
            Etiam porttitor felis mauris.
            Sed quis tortor ex.
            Etiam accumsan felis in arcu imperdiet tempus eu id ante.
            Duis est eros, pellentesque ac imperdiet sit amet, rutrum vitae magna.
            Proin hendrerit felis id mauris maximus euismod.
            Curabitur vestibulum, dui eget vulputate elementum, nisl urna accumsan turpis, nec tincidunt nunc elit a ante.
            Mauris sed viverra nunc, ut suscipit est.
            Donec convallis aliquet magna, sit amet sodales odio euismod non."
          }
        ]
      end

    end
  end
end
