class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :license, :public, :business, :salle]

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
end
