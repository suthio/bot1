# -*- mode:coffee; coding:utf-8 -*-
# Description:
#   SSH commands
#

module.exports = (robot) ->
  # uptimeとdfだけ許可する
  robot.hear /(.+)からえらんで/, (msg) ->
    items = msg.match[1].trim().split(/[　・、\s]+/)
    item = msg.random items
    msg.reply "#{item}で！"

  #
  robot.hear /(.+)から選んで/, (msg) ->
    items = msg.match[1].trim().split(/[　・、\s]+/)
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

  robot.hear /赤福きた！/, (msg) ->
    t = (new Date()).toISOString().replace(/[^0-9]/g, "")
    items = [
      'http://jp.fujitsu.com/solutions/cloud/casestudies/valor/img/person-photo01.jpg',
      'http://www.sbbit.jp/article/image/27385/250_bit131225_valor1.jpg',
      'http://it.impressbm.co.jp/mwimgs/a/2/-/img_a29d9639dc5504f101de8b22b278b06a61225.JPG',
      'http://www.sbbit.jp/article/image/27385/L_bit131227_biz_ic3.jpg'

    ]
    item = msg.random items
    msg.reply "#{item}?#{t}"
