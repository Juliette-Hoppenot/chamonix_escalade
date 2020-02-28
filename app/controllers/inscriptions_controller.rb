class InscriptionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :new]

  def new
    @inscription = Inscription.new
  end

  def create
    @inscription = Inscription.new(inscription_params)
    @inscription.save
    redirect_to root_path
  end

  private

  def inscription_params
    params.require(:inscription).permit(:first_name, :last_name, :phone, :birth_date, :email)
  end
end
