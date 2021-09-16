require 'rails_helper'

RSpec.describe Room, type: :model do
  before do
    @room = FactoryBot.build(:room)
  end

  it 'nameが存在すれば登録できる' do
    expect(@room).to be_valid
  end

  it 'nameが存在しなければ登録できない' do
    @room.name=''
    @room.valid?
    expect(@room.errors.full_messages).to include"チャットルーム名を入力してください"
  end
end
