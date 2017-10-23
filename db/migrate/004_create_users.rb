class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :create_users do |t|
      t.string  :name
    end
  end
end
