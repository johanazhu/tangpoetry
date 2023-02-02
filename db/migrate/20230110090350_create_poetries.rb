class CreatePoetries < ActiveRecord::Migration[7.0]
  def change
    create_table :poetries do |t|
      # t.integer :id
      t.integer :poet_id
      t.text :content
      t.string :title
      # 关联 poets 数据
      t.references :poets, foreign_key: true
      # db.relationship(Poet, foreign_keys=poet_id, uselist=False)

      t.timestamps
    end
  end
end
