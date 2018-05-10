# require "shrine"
# require "shrine/storage/file_system"

# Shrine.storages = {
#   cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"), # temporary
#   store: Shrine::Storage::FileSystem.new("public", prefix: "uploads/store"), # permanent
# }

# Shrine.plugin :activerecord
# Shrine.plugin :cached_attachment_data # for forms


require "shrine/storage/s3"

s3_options = {
  access_key_id:     "AKIAJBQ3ZMZLB5AUORQQ",
  secret_access_key: "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",
  region:            "US-Ohio",
  bucket:            "flowerpowerbucket",
}

Shrine.storages = {
  cache: Shrine::Storage::S3.new(prefix: "cache", **s3_options),
  store: Shrine::Storage::S3.new(**s3_options),
}
