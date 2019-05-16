class GamesController < ApplicationController
  def new
    def generate_letters
      @letters = []
      10.times do
        @letters << ("A".."Z").to_a.sample
      end
      return @letters
    end
    generate_letters
  end

  def score
    @tried_letters = params[:input].split("")
  end
end
