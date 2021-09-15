class  OrderedStyle < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'リーダーに指示を出してもらう' },
    { id: 3, name: '特定のメンバーに指示を出してもらう' },
    { id: 4, name: 'メンバー間で意見を出し合う' },
    { id: 5, name: '自由に演奏する' },
    { id: 6, name: 'ケースバイケース' },
    { id: 7, name: '該当なし' }
  ]

  include ActiveHash::Associations
  has_many :as_members
end