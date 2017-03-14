# Description:
#   Generates an O'rly book cover
#
# Commands:
#   hubot orly <title>;<guide text>;<top text>;<author> - Generate an O'rly book cover
#
# Configuration:
#  None
#
# Notes:
#  Thanks to @ThePracticalDev for putting together this service. https://twitter.com/thepracticaldev
#
module.exports = (robot) ->
  robot.respond /o'?r(?:eil)?ly ([^;]+);([^;]+);([^;]+);([^;]+);?$/i, (msg) ->
    title = encodeURIComponent(msg.match[1].trim())
    guideText = encodeURIComponent(msg.match[2].trim())
    topText = encodeURIComponent(msg.match[3].trim())
    author = encodeURIComponent(msg.match[4].trim())

    # Animal range is from 1 to 40
    animal = Math.floor(Math.random() * 40) + 1;

    # Color range is from 0 to 16
    color = Math.floor(Math.random() * 17);
    if msg.robot.adapterName == 'hipchat'
      msg.send "https://orly-appstore.herokuapp.com/generate?title=#{title}&guide_text=#{guideText}&top_text=#{topText}&author=#{author}&image_code=#{animal}&theme=#{color}&.png"
    else
      msg.send "https://orly-appstore.herokuapp.com/generate?title=#{title}&guide_text=#{guideText}&top_text=#{topText}&author=#{author}&image_code=#{animal}&theme=#{color}"
