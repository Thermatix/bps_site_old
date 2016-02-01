module BpsSite
  class Landing < Sinatra::Base
    get '/api/syllabus' do
      { 124214124214 =>
        {
          title: "Some Event",
          date: "20/03/2015",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
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
        },
        2421421421412 => {
          title: "Some Other Event",
          date: "19/01/2015",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
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
      }.to_json
    end

    get '/api/about' do

    end

    get  '/api/contact' do

    end

    get '/api/news/public' do
      {
        4214124214124 => {
          title: "Some News",
          date: "20/03/2015",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
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
        },
        2343253253252 => {
          title: "Some Other News",
          date: "19/01/2015",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
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
      }.to_json
    end

  end
end
