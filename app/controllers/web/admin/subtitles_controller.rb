class Web::Admin::SubtitlesController < Web::Admin::ApplicationController
  def index
    @q = Subtitle.ransack(params[:q])
    @subtitles = @q.result.page(params[:page]).per(app_config.pagination[:per_page])
  end

  def new
    @subtitle = Subtitle.new
  end

  def edit
    @subtitle = Subtitle.find(params[:id])
  end

  def create
    @subtitle = SubtitleEditType.new(params[:subtitle])

    if @subtitle.save
      redirect_to admin_subtitles_path
    else
      render action: 'new'
    end
  end

  def update
    @subtitle = SubtitleEditType.find(params[:id])
    if @subtitle.update(params[:subtitle])
      redirect_to admin_subtitles_path
    else
      render action: 'edit'
    end
  end

  def destroy
    subtitle = Subtitle.find(params[:id])
    subtitle.mark_as_deleted
    redirect_to admin_subtitles_path
  end
end
