class PhotosController < ApplicationController
  def show
    photo = Photo.find params[:id]

    prev = photo.previous(5)
    nexts = photo.next(5)

    photo_json = photo.as_json
    photo_json['next_id'] = nexts.first.try(:id).try(:to_s)
    photo_json['previous_id'] = prev.first.try(:id).try(:to_s)
    # render json: {photo: {id: 1}, photos: [{id: 2}, {id: 3}]}
    render json: {
      photo: photo_json,
      photos: (prev + nexts).as_json
    }
  end
end
