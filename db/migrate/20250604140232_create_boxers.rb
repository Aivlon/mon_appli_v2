class CreateBoxers < ActiveRecord::Migration[8.0]
  def change
    create_table :boxers do |t|
      t.string :name
      t.string :nationality
      t.string :weight_class
      t.integer :olympic_year
      t.integer :attack_points
      t.integer :defense_points

      t.timestamps
    end
  end
end
