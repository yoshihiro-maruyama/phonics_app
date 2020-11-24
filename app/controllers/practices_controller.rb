class PracticesController < ApplicationController
  def show
    @alphabet = Alphabet.find(params[:id])
    @practices = @alphabet.practices
  end
end
