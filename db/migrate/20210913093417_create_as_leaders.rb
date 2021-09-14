class CreateAsLeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :as_leaders do |t|
      t.text        :what_band,       null: false
      t.text        :why_band,        null: false
      t.text        :ideal_member,     null: false
      t.integer     :how_long_leader,  null: false
      t.integer     :leader_ship_id,   null: false
      t.integer     :do_genre_id,      null: false
      t.integer     :order_style_id,   null: false
      t.integer     :compose_style_id, null: false
      t.integer     :belong_many_id,   null: false
      t.references  :user,             null: false

      t.timestamps
    end
  end
end
