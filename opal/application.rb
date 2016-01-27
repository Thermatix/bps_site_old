require 'opal'
require 'reactive-ruby'
require 'browser'
require 'ruta'
require_tree './libs'

require 'contexts/landing/load'
require 'contexts/members/load'
require 'contexts/admin/load'

Ruta::Router.define do
  root_to :landing
end

$document.ready do
  Ruta.start_app
end
