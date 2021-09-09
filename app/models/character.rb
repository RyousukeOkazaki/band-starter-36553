class  Character < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '社交的' },
    { id: 3, name: '明るい' },
    { id: 4, name: '行動派' },
    { id: 5, name: '大人しい' },
    { id: 6, name: '人見知り' },
    { id: 7, name: '論理派' },
    { id: 8, name: '努力家' },
    { id: 9, name: '感覚型' },
    { id: 10, name: '平凡' },
    { id: 11, name: '天才型' },
    { id: 12, name: 'わからない' },
    { id: 13, name: '該当なし' }
  ]

  include ActiveHash::Associations
  has_many :users
end