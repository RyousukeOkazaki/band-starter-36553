class  WantBelongMany < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '掛け持ちしたい' },
    { id: 3, name: 'サポートでの掛け持ちのみしたい' },
    { id: 4, name: '掛け持ちはしない' },
    { id: 5, name: 'ケースバイケース' }
  ]

  include ActiveHash::Associations
  has_many :as_leaders
  has_many :as_members
end