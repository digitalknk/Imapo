CarrierWave.configure do |config|
  # if Rails.env.production?

    config.fog_credentials = {
      :provider              => 'AWS',
      :aws_access_key_id     => ENV["ACCESS_KEY_ID"],
      :aws_secret_access_key => ENV["SECRET_ACCESS_KEY"],
      :region                => ENV["REGION"]                  # optional, defaults to 'us-east-1'
      # :hosts                 => 's3.example.com',             # optional, defaults to nil
      # :endpoint              => 'https://s3.example.com:8080' # optional, defaults to nil
    }
    config.fog_directory = ENV["BUCKET"]
    config.fog_attributes = {'Cache-Control'=>'max-age=31536000'}  # optional, defaults to {}

  # else
  #   #for development and testing locally
  #   config.storage = :file
  #   # config.enable_processing = false
  # end
end