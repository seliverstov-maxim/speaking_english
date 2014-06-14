class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :state
      t.string :slug
      t.text :description
      t.text :sourcecode

      t.timestamps
    end
  end
end
