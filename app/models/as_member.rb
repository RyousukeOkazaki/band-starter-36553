class AsMember < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user, optional: true
  belongs_to :do_genre
  belongs_to :ordered_style
  belongs_to :want_belong_many

  with_options presence: true do
    validates :what_band, :why_band, :ideal_leader
  end
  with_options numericality: { other_than: 1 , message: "を選んでください"} do
    validates :do_genre_id, :ordered_style_id, :want_belong_many_id
  end
end
