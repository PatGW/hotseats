CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: 'AKIAJU4VT7GOBMAASWHQ',
        aws_secret_access_key: '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'
    }

    config.fog_directory  = 'hotseatsuploads'
    config.fog_public     = false
end