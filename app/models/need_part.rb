class NeedPart < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ヴォーカル' },
    { id: 3, name: 'エレキギター' },
    { id: 4, name: 'アコースティックギター' },
    { id: 5, name: 'エレキベース' },
    { id: 6, name: 'ウッドベース' },
    { id: 7, name: 'ドラム' },
    { id: 8, name: 'パーカッション' },
    { id: 9, name: 'ピアノ' },
    { id: 10, name: 'シンセサイザー' },
    { id: 11, name: 'その他弦楽器' },
    { id: 12, name: 'その他管楽器' },
    { id: 13, name: 'その他打楽器' },
    { id: 14, name: 'ラップ' },
    { id: 15, name: 'DJ' },
    { id: 16, name: 'DTM' },
    { id: 17, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts
end