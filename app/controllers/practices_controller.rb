class PracticesController < ApplicationController
  def show
    @alphabet = Alphabet.find(params[:id])
  end
end
