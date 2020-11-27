class PracticesController < ApplicationController

  def index
    @alphabets = Alphabet.all
  end

  def show
    @alphabet = Alphabet.find(params[:id])
    @practices = @alphabet.practices
  end
end
