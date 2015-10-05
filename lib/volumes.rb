volumes = [
  {
    slug: 'volume-three',
    name: "line. volume three.",
    volume: "volume three.",
    city: "New York City.",
    image: "",
    intro_text: "This is some intro text here and there.",
  }
]

volumes.each do |volume|
  v = Volume.where(slug: volume[:slug]).first || Volume.new
  v.assign_attributes(volume)
  v.save
end
