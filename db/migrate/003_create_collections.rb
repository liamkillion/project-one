class CreateCollections < ActiveRecord::Migration
  def change
    create_table :create_collections |t|
      t.string  :name
    end
  end
end
