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

  def salle
  end

  def inscription

  end
end
