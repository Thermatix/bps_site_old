module BpsSite
  class App < Sinatra::Base

    configure do
      set :root,File.expand_path('../../../', __FILE__)
      set :opal_libs, %w{opal ruta reactive-ruby opal-browser}
    end

    include Asset_Pipeline

    use Landing
    use Members
    use Admin

    helpers Helpers

    get "/" do
      erb :index
    end

  end
end
