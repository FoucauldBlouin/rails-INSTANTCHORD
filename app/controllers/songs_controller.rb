class SongsController < ApplicationController

def new
  @song = Song.new
  @instruments = Instrument.all
  @keys = Key.all
  @styles = Style.all
end

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
