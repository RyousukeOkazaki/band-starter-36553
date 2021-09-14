class  DoGenre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ロック' },
    { id: 3, name: 'ポップス' },
    { id: 4, name: 'クラシック' },
    { id: 5, name: 'ジャズ' },
    { id: 6, name: 'ヒップホップ' },
    { id: 7, name: 'ヴィジュアル' },
    { id: 8, name: 'ヘヴィメタ' },
    { id: 9, name: 'ブルース' },
    { id: 10, name: 'フリージャンル' },
    { id: 11, name: 'その他' },
    { id: 12, name: '新しいジャンルを作りたい' },
    { id: 13, name: '該当なし' }
  ]

  include ActiveHash::Associations
  has_many :as_leaders
  has_many :as_members
end