%w{yui/compressor sass sprockets-helpers sinatra opal}.each do |lib|
  require lib
end

require "bps_site/version"
require 'bps_site/asset_pipeline'

require 'bps_site/controllers/landing'
require 'bps_site/controllers/members'
require 'bps_site/controllers/admin'


root = File.dirname(File.expand_path('..', __FILE__))
Opal.append_path "#{root}/opal"

require 'bps_site/helpers'
require 'bps_site/app'
