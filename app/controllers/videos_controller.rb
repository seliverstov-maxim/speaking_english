class VideosController < ApplicationController
  def index
    @videos = Video.page params[:page]
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
