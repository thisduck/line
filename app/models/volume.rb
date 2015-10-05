class Volume
  include Mongoid::Document

  field :slug, type: String
  field :name, type: String
  field :volume, type: String
  field :city, type: String
  field :image, type: String
  field :intro_text, type: String
end

