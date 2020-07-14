class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :entrainements, :infos, :concept, :license, :public, :business, :salle, :inscription]

  def home
  end

  def license
  end

  def business
  end

  def public
  end

  def infos
  end

  def salle
  end

  def inscription
  end

  def concept

  end

  def entrainements

  end
end
