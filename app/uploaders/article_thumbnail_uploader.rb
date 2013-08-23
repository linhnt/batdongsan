# encoding: utf-8

class ArticleThumbnailUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  storage :file
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  version :thumbnail_small do
    process resize_to_limit: [100, 100]
  end
  
  version :thumbnail_big do
    process resize_to_limit: [500, 500]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
