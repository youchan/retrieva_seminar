require 'slide'
require 'page_base'
require 'slides/syntactic_analysis-2018-06-27/pages'
require 'opal/websocket'

Gibier.slide_name = 'syntactic_analysis-2018-06-27'
Gibier.gh_pages = `window.ghPages`
Gibier.assets_path = `window.assetsPath`

module App
  def self.render(ws)
    Hyalite.render(Hyalite.create_element(Gibier::Slide, {ws:ws}), $document['.gibier'])
  end
end

$document.ready do
  ws = Opal::WebSocket.new("ws://#{`window.location.host`}/push_notification/start/slide/syntactic_analysis-2018-06-27") unless Gibier.gh_pages

  $window.on(:resize) do
    App.render(ws)
  end

  App.render(ws)
end
