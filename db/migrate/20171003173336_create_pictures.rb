class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.bigserial :idalbum
      t.text :img
      t.bigserial :view

      t.timestamps
    end
  end
end
