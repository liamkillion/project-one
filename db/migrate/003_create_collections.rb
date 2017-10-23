class CreateCollections < ActiveRecord::Migration[4.2]
  def change
    create_table :create_collections do |t|
      t.string  :name
    end
  end
end
