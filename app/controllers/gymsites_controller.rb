class GymsitesController < ApplicationController

  def index
    @gymsites = Gymsite.all
  end

  private

  def gymsite_params
    params.require(:gymsite).permit(:id, :surname, :legal_code, :email, :description)
  end
end
