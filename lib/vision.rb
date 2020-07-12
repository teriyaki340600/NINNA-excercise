require 'base64'
require 'json'
require 'net/https'
module Vision
  class << self
    def get_image_data(image_file)
      api_url = "https://vision.googleapis.com/v1/images:annotate?key=#{ENV['GOOGLE_VISION_API_KEY']}"
      #S3に圧縮保存した画像をbase64にエンコード
      base64_image = Base64.encode64(open(image_file.thumb.url).read)
      #APIリクエスト用にJSONパラメータを作成
      params = {
        requests: [{
          image: {
            content: base64_image
          },
          features: [
            {
              type: 'SAFE_SEARCH_DETECTION'
            }
          ]
        }]
      }.to_json
      #Google Cloud Vision APIにリクエストする
      uri = URI.parse(api_url)
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'application/json'
      response = https.request(request, params)

      JSON.parse(response.body)['responses'][0]['safeSearchAnnotation']
    end
  end
end