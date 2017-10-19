class PetUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  def public_id
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
