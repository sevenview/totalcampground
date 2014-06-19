class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
