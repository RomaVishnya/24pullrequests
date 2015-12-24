class CreateAggregationFilters < ActiveRecord::Migration
  def change
    create_table :aggregation_filters do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :repo_pattern

      t.timestamps null: false
    end
  end
end
