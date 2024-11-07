class CreateExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.string :video_url

      t.timestamps
    end
  end
end
