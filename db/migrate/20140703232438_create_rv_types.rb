class CreateRvTypes < ActiveRecord::Migration
  def change
    create_table :rv_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
