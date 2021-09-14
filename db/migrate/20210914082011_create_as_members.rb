class CreateAsMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :as_members do |t|
      t.text  :what_band,              null: false
      t.text  :why_band,               null: false
      t.text  :ideal_leader,           null: false
      t.integer :do_genre_id,          null: false
      t.integer :ordered_style_id,     null: false
      t.integer :want_belong_many_id,  null: false
      t.references :user,              null: false

      t.timestamps
    end
  end
end
