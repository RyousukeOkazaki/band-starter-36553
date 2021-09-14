class AsLeader < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user, optional: true
  belongs_to :leader_ship, :do_genre, :order_style, :compose_style, :belong_many

  with_options presence: true do
    validates :what_band, :why_band, :ideal_member
    validates :how_long_leader, numericality: { only_integer: true }
  end
#how_long_leaderは数字のみのバリデーション要
  with_options numericality: { other_than: 1 , message: "を選んでください"} do
    validates :leader_ship_id, :do_genre_id, :order_style_id, :compose_style_id, :belong_many_id
  end
end
