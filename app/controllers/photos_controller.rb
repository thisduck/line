class PhotosController < ApplicationController
  def show
    photo = Photo.find params[:id]

    prev = photo.previous(2)
    nexts = photo.next(7)

    photo_json = photo.as_json
    photo_json['next_id'] = nexts.first.try(:id).try(:to_s)
    photo_json['previous_id'] = prev.first.try(:id).try(:to_s)
    photo_json['preloads'] = []

    (prev + nexts).each do |item|
      # Rails.logger.info item.as_json['image'].inspect
      photo_json['preloads'] << item.as_json['image']
    end



    # render json: {photo: {id: 1}, photos: [{id: 2}, {id: 3}]}
    render json: {
      photo: photo_json,
      photos: (prev + nexts).as_json
    }
  end
end
