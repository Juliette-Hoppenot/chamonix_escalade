class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :license, :public, :business, :salle, :inscription]

  def home
  end

  def license
  end

  def business
  end

  def public
  end

  def info

  end

  def salle
    @markers = {
      lat: 45.894951,
      lng: 6.710783
    }
  end

  def inscription
  end
end
