class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @spaces = Space.where.not(latitude: nil, longitude:nil)
    @markers = @spaces.geocoded.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        info_window: render_to_string(partial: "info_window", locals: { space: space }),
        image_url: helpers.asset_url("picnic-green.png")
      }
    end
  end
end
