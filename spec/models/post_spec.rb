require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    user = FactoryBot.create(:user)
    @post = FactoryBot.build(:post, user_id: user.id)
    
  end

  context '募集記事が投稿できる' do
    it '全ての項目が正しく入力されていれば保存できること' do
      expect(@post).to be_valid
    end
    it 'need_partneed_part_idが2以上の半角数字なら保存できる' do
      @post.need_part_id=2
      expect(@post).to be_valid
    end
    it 'need_part_idが17以下の半角数字なら保存できる' do
      @post.need_part_id=17
      expect(@post).to be_valid
    end
    it 'area_of_activity_idが2以上の半角数字なら保存できる' do
      @post.area_of_activity_id=2
      expect(@post).to be_valid
    end
    it 'area_of_activity_idが48以下の半角数字なら保存できる' do
      @post.area_of_activity_id=48
      expect(@post).to be_valid
    end
    it 'genre_idが2以上の半角数字なら保存できる' do
      @post.genre_id=2
      expect(@post).to be_valid
    end
    it 'genre_idが6以下の半角数字なら保存できる' do
      @post.genre_id=6
      expect(@post).to be_valid
    end
    it 'professional_or_idが2以上の半角数字なら保存できる' do
      @post.professional_or_id=2
      expect(@post).to be_valid
    end
    it 'professional_or_idが6以下の半角数字なら保存できる' do
      @post.professional_or_id=6
      expect(@post).to be_valid
    end
  end

    context '募集ユーザー情報が登録できない' do
    it 'user_idが空では登録できない' do
      @post.user_id = nil
      @post.valid?
      expect(@post.errors.full_messages).to include"Userを入力してください"
    end
    it 'titleが空では登録できない' do
      @post.title=''
      @post.valid?
      expect(@post.errors.full_messages).to include"タイトルを入力してください"
    end
    it 'introductionが空では登録できない' do
      @post.introduction=''
      @post.valid?
      expect(@post.errors.full_messages).to include"募集内容を入力してください"
    end
    it 'band_name_ideaが空では登録できない' do
      @post.band_name_idea=''
      @post.valid?
      expect(@post.errors.full_messages).to include"仮バンド名を入力してください"
    end
    it 'need_part_idが空では登録できない' do
      @post.need_part_id=''
      @post.valid?
      expect(@post.errors.full_messages).to include"募集パートを選んでください"
    end
    it 'area_of_activity_idが1では登録できない' do
      @post.area_of_activity_id=1
      @post.valid?
      expect(@post.errors.full_messages).to include"活動地域を選んでください"
    end
    it 'genre_idが1では登録できない' do
      @post.genre_id=1
      @post.valid?
      expect(@post.errors.full_messages).to include"演奏するジャンルを選んでください"
    end
    it 'professional_or_idが1では登録できない' do
      @post.professional_or_id=1
      @post.valid?
      expect(@post.errors.full_messages).to include"活動方針を選んでください"
    end
  end
end
