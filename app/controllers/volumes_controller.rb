class VolumesController < ApplicationController
  def show
    volume = Volume.where(slug: params[:id]).first

    json = volume.as_json
    json[:first_id] = Photo.order_by([[:position, :asc]]).limit(1).first.id.to_s
    json[:id] = volume.slug

    render json: {
      volume: json
    }
  end
end

