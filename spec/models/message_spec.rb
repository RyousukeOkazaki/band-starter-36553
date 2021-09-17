require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    user = FactoryBot.create(:user)
    another_user = FactoryBot.create(:user)
    room = FactoryBot.create(:room, user_ids: [user.id, another_user.id])
    @message = FactoryBot.build(:message, user_id: user.id, room_id: room.id)
  end

  it '全ての項目が正しく設定されていれば保存できること' do
    expect(@message).to be_valid
  end

  it 'contentが空では保存されないこと' do
    @message.content = ''
    @message.valid?
    expect(@message.errors.full_messages).to include"メッセージを入力してください"
  end

  it 'user_idが存在なければ保存されないこと' do
    @message.user_id = nil
    @message.valid?
    expect(@message.errors.full_messages).to include"Userを入力してください"
  end

  it 'room_idが存在しなければ保存されないこと' do
    @message.room_id = nil
    @message.valid?
    expect(@message.errors.full_messages).to include"Roomを入力してください"
  end
end
