class Web::VideosController < Web::ApplicationController
  def index
    @q = Video.active.ransack(params[:q])
    @videos = @q.result.page(params[:page]).per(app_config.pagination[:per_page])
  end

  def show
  end
end