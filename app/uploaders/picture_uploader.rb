# frozen_string_literal: true

class PictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
