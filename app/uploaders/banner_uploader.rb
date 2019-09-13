# frozen_string_literal: true

class BannerUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
