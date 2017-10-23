class CreateCollections < ActiveRecord::Migration
  def change
    create_table :create_users |t|
      t.string  :name
    end
  end
end
