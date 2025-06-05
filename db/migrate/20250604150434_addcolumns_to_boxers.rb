class AddcolumnsToBoxers < ActiveRecord::Migration[8.0]
  def change
    add_column :boxers, :name, :string
    add_column :boxers, :nationality, :string
    add_column :boxers, :weight_class, :string
    add_column :boxers, :olympic_year, :integer
    add_column :boxers, :attack_points, :integer
    add_column :boxers, :defense_points, :integer
  end
end
