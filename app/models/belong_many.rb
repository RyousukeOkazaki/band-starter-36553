class  BelongMany < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '掛け持ち可能' },
    { id: 3, name: 'サポートでの掛け持ちのみ可' },
    { id: 4, name: '掛け持ち不可' },
    { id: 5, name: 'ケースバイケース' }
  ]

  include ActiveHash::Associations
  has_many :as_leaders
end