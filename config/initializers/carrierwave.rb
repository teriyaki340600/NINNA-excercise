#S3用に作成
unless Rails.env.development? || Rails.env.test?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIA3VAN5HCO5IQMLZGG',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'ninna'
    config.cache_storage = :fog
  end
end