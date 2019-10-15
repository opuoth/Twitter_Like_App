if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider =>'AWS',
      :region =>ENV['ap-northeast-1'],
      :aws_access_key_id  =>ENV['AKIAW7Z4XB3BDEHTF4F5'],
      :aws_secret_access_key  =>ENV['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']
    }
    config.fog_directory  = ENV['s3sampleapprails']
  end
end
