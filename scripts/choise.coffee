# -*- mode:coffee; coding:utf-8 -*-
# Description:
#   SSH commands
#

module.exports = (robot) ->
  # uptimeとdfだけ許可する
  #
  robot.hear /(.+)から選んで/, (msg) ->
    items = msg.match[1].split(/[　・、\s]+/)
    item = msg.random items
    msg.reply "#{item}で！"

