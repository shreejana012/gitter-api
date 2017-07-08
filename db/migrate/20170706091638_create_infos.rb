class CreateInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :infos do |t|
      t.text :text
      t.string :user_id
      t.string :text_id
      t.timestamps
    end
  end
end
