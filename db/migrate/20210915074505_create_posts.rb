class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string      :title,                null: false
      t.text        :introduction,         null: false
      t.string      :band_name_idea,       null: false
      t.integer     :need_part_id,         null: false
      t.integer     :area_of_activity_id,  null: false
      t.integer     :genre_id,             null: false
      t.integer     :professional_or_id,   null: false
      t.references  :user,                 null: false
      t.timestamps
    end
  end
end
