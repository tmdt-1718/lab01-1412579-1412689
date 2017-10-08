class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.text :name
      t.bigserial :iduser

      t.timestamps
    end
  end
end
