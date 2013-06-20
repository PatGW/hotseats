CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AKIAJU4VT7GOBMAASWHQ'],
    aws_secret_access_key: ENV['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']
  }
  config.fog_directory = ENV['hotseatsuploads']
end