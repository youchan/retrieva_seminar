require 'hyalite'
require 'browser/http'
require 'browser/socket'
require 'browser/location'

class Script
  include Hyalite::Component
  include Hyalite::Component::ShortHand

  def render
    div({dangerouslySetInnerHTML: { __html: @props[:script_html]}})
  end
end

$document.ready do
  ws = Browser::Socket.new("ws://#{$window.location.host}/push_notification/start/script/handai_2019-01-29")
  $window.on('keydown') do |evt|
    ws.write("handai_2019-01-29:keydown:#{evt.code}")
  end

  response = Browser::HTTP.get!('/assets/scripts/handai_2019-01-29/script.html')
  Hyalite.render(Hyalite.create_element(Script, script_html: response.text), $document['.script'])
end

