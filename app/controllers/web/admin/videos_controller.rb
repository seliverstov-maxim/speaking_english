class Web::Admin::VideosController < Web::Admin::ApplicationController
  def index
    @q = Video.ransack(params[:q])
    @videos = @q.result.page(params[:page]).per(app_config.pagination[:per_page])
  end

  def new
    @video = Video.new
  end

  def edit
    @video = Video.find(params[:id])
  end

  def create
    @video = VideoEditType.new(params[:video])

    if @video.save
      redirect_to admin_videos_path
    else
      render action: 'new'
    end
  end

  def update
    @video = VideoEditType.find(params[:id])
p params[:video]
    if @video.update(params[:video])
      redirect_to admin_videos_path
    else
      render action: 'edit'
    end
  end

  def destroy
    video = Video.find(params[:id])
    video.mark_as_deleted
    redirect_to admin_videos_path
  end
end
