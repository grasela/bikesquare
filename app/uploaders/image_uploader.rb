require "image_processing/mini_magick"

class ImageUploader < Shrine
  plugin :processing
  plugin :versions, names: [:original, :small, :medium, :big]
  plugin :delete_raw # delete processed files after uploading

  process(:store) do |io, context|
    original = io.download
    pipeline = ImageProcessing::MiniMagick.source(original)

    size_200 = pipeline.resize_to_limit!(200, 140)
    size_400 = pipeline.resize_to_limit!(400, 280)
    size_600 = pipeline.resize_to_limit!(600, 420)

    original.close!

     { original: io, small: size_200, medium: size_400, big: size_600 }
  end

end
