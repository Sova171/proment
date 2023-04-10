class CreateGalleries < ActiveRecord::Migration[7.0]
  def change
    create_table :galleries do |t|
      t.string :place
      t.string :theme

      t.timestamps
    end
  end
end
