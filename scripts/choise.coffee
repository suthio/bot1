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
  robot.hear /WMレビューしてほしいな/, (msg) ->
    items = [
              'yusaku.hatanaka',
              'daiki.ueno', 'horikawa', 'kohei.yoshikura',
              'kosuke.nishaya',
              'thajime',
              'yuma',
              'junjinoma',
              'gaishimo']
    item = msg.random items
    msg.reply "#{item}で！"
  robot.hear /赤福おじさんってだれだっけ？/, (msg) ->
    msg.reply "豊な"

