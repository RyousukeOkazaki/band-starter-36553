class  OrderStyle < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '自分がメンバーに指示を出す' },
    { id: 3, name: '特定のメンバーが指示を出す' },
    { id: 4, name: 'メンバー間で意見を出し合う' },
    { id: 5, name: '自由に演奏する' },
    { id: 6, name: 'ケースバイケース' },
    { id: 7, name: '該当なし' }
  ]

  include ActiveHash::Associations
  has_many :as_leaders
end