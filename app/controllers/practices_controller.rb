class PracticesController < ApplicationController
  def index
    @alphabets = Alphabet.all
  end

  def show
    @alphabet = Alphabet.find(params[:id])
    @alphabet_count = Alphabet.all.count
    @practices = @alphabet.practices
  end
end
