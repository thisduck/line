photos = Dir['/Users/adnan/sources/photos/*.jpg']

puts photos

photos.each do |photo|
  p = Photo.new
  p.image = File.open photo
  p.save
end
