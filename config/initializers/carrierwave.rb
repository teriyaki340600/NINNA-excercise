#S3用に作成
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: ENV['REGION']
  }
  # config.fog_public = false
  config.fog_directory  = 'ninna'
  config.cache_storage = :fog
end

CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/