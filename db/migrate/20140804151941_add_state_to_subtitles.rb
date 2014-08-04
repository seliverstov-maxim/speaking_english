class AddStateToSubtitles < ActiveRecord::Migration
  def change
    add_column :subtitles, :state, :string
  end
end
