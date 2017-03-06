class CarrierwaveImage < ActiveRecord::Base
  mount_uploader :asset, AssetUploader

  uploader = AvatarUploader.new

  uploader.store!(my_file)

  u = User.new
  u.avatar = params[:file] # Assign a file like this, or

  # like this
  File.open('somewhere') do |f|
    u.avatar = f
  end

  u.save!
  u.avatar.url # => '/url/to/file.png'
  u.avatar.current_path # => 'path/to/file.png'
  u.avatar_identifier # => 'file.png'
end
