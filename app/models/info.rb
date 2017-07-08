require 'net/http'
require "uri"
class Info < ApplicationRecord
  # result = Net::HTTP.get(URI.parse('https://api.gitter.im/v1/rooms/595b6ceed73408ce4f6b7f1f/chatMessages?access_token=1ca09f042cfd33aa5ba0683add3c92f1e444d349'))
  # json = JSON.parse(result)
  # json['0']['fromUser'][1..-1].each do |data| # [1..-1] ignores first dummy element
  #   Info.create(
  #     text: data['text'].gsub(',', '')
  #   )
  # end
  def api_request
    url = URI.parse('https://api.gitter.im/v1/rooms/595b6ceed73408ce4f6b7f1f/chatMessages?access_token=1ca09f042cfd33aa5ba0683add3c92f1e444d349')
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
      json['0']['fromUser'][1..-1].each do |data| # [1..-1] ignores first dummy element
      Info.create(
        text: data['text'].gsub(',', '')
      )

    end
  end
end
