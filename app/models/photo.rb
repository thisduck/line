class Photo
  include Mongoid::Document
  include Mongoid::Orderable

  mount_uploader :image, PhotoUploader

  orderable

  field :note, type: String

  def as_json(options = {})
    json = super

    json['id'] = json['_id'].to_s

    json
  end

	def previous(limit = 1)
		self.class.where(:position.lt => self.position).order_by([[:position, :desc]]).limit(limit).all
	end

	def next(limit = 1)
		self.class.where(:position.gt => self.position).order_by([[:position, :asc]]).limit(limit).all
	end
end
