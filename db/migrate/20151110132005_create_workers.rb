class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :surname
      t.string :fathername

      t.timestamps null: false
    end
  end
end
