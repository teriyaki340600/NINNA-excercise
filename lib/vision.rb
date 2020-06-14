require 'base64'
require 'json'
require 'net/https'
module Vision
  class << self
    def get_image_data(image_file)
      # binding.pry
      api_url = "https://vision.googleapis.com/v1/images:annotate?key=#{ENV['GOOGLE_VISION_API_KEY']}"
      # 画像をbase64にエンコード
      # base64_image = Base64.encode64(open("#{Rails.root}/public/uploads/#{image_file.class.to_s.underscore}/image_id/#{image_file.id}/#{image_file.image_id}").read)
      # image = Google::Cloud::Vision::Image.from_io(image_file.image_id, self)
      # base64_image = Base64.encode64(open(image_file.image_id, &:read))
      # APIリクエスト用のJSONパラメータ
      params = {
        requests: [{
          image: {
            # content: base64_image
            source: {
              image_uri: "#{image_file.image_id.thumb.url}"
              # image_uri: "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"
            }
          },
          features: [
            {
              type: 'SAFE_SEARCH_DETECTION'
            }
          ]
        }]
      }.to_json
      # Google Cloud Vision APIにリクエスト
      uri = URI.parse(api_url)
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'application/json'
      response = https.request(request, params)
      # APIレスポンス出力
      JSON.parse(response.body)['responses'][0]['safeSearchAnnotation']
    end
  end
end