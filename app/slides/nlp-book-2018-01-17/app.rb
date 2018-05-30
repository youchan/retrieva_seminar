require 'slide'
require 'page_base'
require 'slides/nlp-book-2018-01-17/pages'
require 'opal/websocket'

Gibier.slide_name = 'nlp-book-2018-01-17'
Gibier.gh_pages = `window.ghPages`
Gibier.assets_path = `window.assetsPath`

module App
  def self.render(ws)
    Hyalite.render(Hyalite.create_element(Gibier::Slide, {ws:ws}), $document['.gibier'])
  end
end

$document.ready do
  ws = Opal::WebSocket.new("ws://#{`window.location.host`}/push_notification/start/slide/nlp-book-2018-01-17") unless Gibier.gh_pages

  $window.on(:resize) do
    App.render(ws)
  end

  App.render(ws)
end
