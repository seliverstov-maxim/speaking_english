class CreateSubtitles < ActiveRecord::Migration
  def change
    create_table :subtitles do |t|
      t.string :lang
      t.references :video, index: true
      t.text :source

      t.timestamps
    end
  end
end
