require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context 'ユーザー新規登録ができる' do
    it '全ての項目が正しく入力されていれば保存できること' do
      expect(@user).to be_valid
    end
    it 'passwordとpassword_confirmationがが6文字以上であれば登録できる' do
      @user.password='aaaaaa'
      @user.password_confirmation=@user.password
      expect(@user).to be_valid
    end
    it 'how_long_playが0以上の半角数字なら保存できる' do
      @user.how_long_play=0
      expect(@user).to be_valid
    end
    it 'how_long_playが9999以下の半角数字なら保存できる' do
      @user.how_long_play=9999
      expect(@user).to be_valid
    end
    it 'how_long_blankが0以上の半角数字なら保存できる' do
      @user.how_long_blank=0
      expect(@user).to be_valid
    end
    it 'how_long_blankが9999以下の半角数字なら保存できる' do
      @user.how_long_blank=9999
      expect(@user).to be_valid
    end
    it 'how_long_bandが0以上の半角数字なら保存できる' do
      @user.how_long_band=0
      expect(@user).to be_valid
    end
    it 'how_long_bandが9999以下の半角数字なら保存できる' do
      @user.how_long_band=9999
      expect(@user).to be_valid
    end
    it 'how_many_bandが0以上の半角数字なら保存できる' do
      @user.how_many_band=0
      expect(@user).to be_valid
    end
    it 'how_many_bandが9999以下の半角数字なら保存できる' do
      @user.how_many_band=9999
      expect(@user).to be_valid
    end
    it 'how_many_compose=が0以上の半角数字なら保存できる' do
      @user.how_many_compose=0
      expect(@user).to be_valid
    end
    it 'how_many_composeが9999以下の半角数字なら保存できる' do
      @user.how_many_compose=9999
      expect(@user).to be_valid
    end
    it 'sex_idが2以上の半角数字なら保存できる' do
      @user.sex_id=2
      expect(@user).to be_valid
    end
    it 'sex_idが3以下の半角数字なら保存できる' do
      @user.sex_id=3
      expect(@user).to be_valid
    end
    it 'character_idが2以上の半角数字なら保存できる' do
      @user.character_id=2
      expect(@user).to be_valid
    end
    it 'character_idが13以下の半角数字なら保存できる' do
      @user.character_id=13
      expect(@user).to be_valid
    end
    it 'what_play_idが2以上の半角数字なら保存できる' do
      @user.what_play_id=2
      expect(@user).to be_valid
    end
    it 'what_play_idが17以下の半角数字なら保存できる' do
      @user.what_play_id=17
      expect(@user).to be_valid
    end
    it 'genre_idが2以上の半角数字なら保存できる' do
      @user.genre_id=2
      expect(@user).to be_valid
    end
    it 'genre_idが13以下の半角数字なら保存できる' do
      @user.genre_id=13
      expect(@user).to be_valid
    end
    it 'prefecture_idが2以上の半角数字なら保存できる' do
      @user.prefecture_id=2
      expect(@user).to be_valid
    end
    it 'prefecture_idが48以下の半角数字なら保存できる' do
      @user.prefecture_id=48
      expect(@user).to be_valid
    end
    it 'active_day_idが2以上の半角数字なら保存できる' do
      @user.active_day_id=2
      expect(@user).to be_valid
    end
    it 'active_day_idが11以下の半角数字なら保存できる' do
      @user.active_day_id=11
      expect(@user).to be_valid
    end
    it 'skill_idが2以上の半角数字なら保存できる' do
      @user.skill_id=2
      expect(@user).to be_valid
    end
    it 'skill_idが10以下の半角数字なら保存できる' do
      @user.skill_id=10
      expect(@user).to be_valid
    end
    it 'leader_or_member_idが2以上の半角数字なら保存できる' do
      @user.leader_or_member_id=2
      expect(@user).to be_valid
    end
    it 'leader_or_member_idが3以下の半角数字なら保存できる' do
      @user.leader_or_member_id=3
      expect(@user).to be_valid
    end
  end

    context 'ユーザー新規登録ができない' do
    it 'emailが空では登録できない' do
      @user.email=''
      @user.valid?
      expect(@user.errors.full_messages).to include"Eメールを入力してください"
    end
    it 'passwordが空では登録できない' do
      @user.password=''
      @user.valid?
      expect(@user.errors.full_messages).to include"パスワードを入力してください"
    end
    it 'passwordが5文字以下では登録できない' do
      @user.password='aaaaa'
      @user.password_confirmation=@user.password
      @user.valid?
      expect(@user.errors.full_messages).to include"パスワードは6文字以上で入力してください"
    end
    it 'passwordとpassword_confirmationが不一致では登録できない' do
      @user.password='aaaaaa'
      @user.valid?
      expect(@user.errors.full_messages).to include"パスワード（確認用）とパスワードの入力が一致しません"
    end
    it 'nicknameが空では登録できない' do
      @user.nickname=''
      @user.valid?
      expect(@user.errors.full_messages).to include"ニックネームを入力してください"
    end
    it 'date_of_birthが空では登録できない' do
      @user.date_of_birth=''
      @user.valid?
      expect(@user.errors.full_messages).to include"生年月日を入力してください"
    end
    it 'introductionが空では登録できない' do
      @user.introduction=''
      @user.valid?
      expect(@user.errors.full_messages).to include"自己紹介を入力してください"
    end
    it 'how_long_playが空では登録できない' do
      @user.how_long_play=''
      @user.valid?
      expect(@user.errors.full_messages).to include"楽器歴を入力してください"
    end
    it 'how_long_playが文字列では登録できない' do
      @user.how_long_play='３'
      @user.valid?
      expect(@user.errors.full_messages).to include"楽器歴は数値で入力してください"
    end
    it 'how_long_playが0未満だと登録できない' do
      @user.how_long_play=-1
      @user.valid?
      expect(@user.errors.full_messages).to include"楽器歴は0以上の値にしてください"
    end
    it 'how_long_playが9999を超過すると登録できない' do
      @user.how_long_play=10000
      @user.valid?
      expect(@user.errors.full_messages).to include"楽器歴は9999以下の値にしてください"
    end

    it 'how_long_blankが空では登録できない' do
      @user.how_long_blank=''
      @user.valid?
      expect(@user.errors.full_messages).to include"ブランクを入力してください"
    end
    it 'how_long_blankが0未満だと登録できない' do
      @user.how_long_blank=-1
      @user.valid?
      expect(@user.errors.full_messages).to include"ブランクは0以上の値にしてください"
    end
    it 'how_long_blankが9999を超過すると登録できない' do
      @user.how_long_blank=10000
      @user.valid?
      expect(@user.errors.full_messages).to include"ブランクは9999以下の値にしてください"
    end
    it 'how_long_bandが空では登録できない' do
      @user.how_long_band=''
      @user.valid?
      expect(@user.errors.full_messages).to include"バンド歴を入力してください"
    end
    it 'how_long_bandが0未満だと登録できない' do
      @user.how_long_band=-1
      @user.valid?
      expect(@user.errors.full_messages).to include"バンド歴は0以上の値にしてください"
    end
    it 'how_long_bandが9999を超過すると登録できない' do
      @user.how_long_band=10000
      @user.valid?
      expect(@user.errors.full_messages).to include"バンド歴は9999以下の値にしてください"
    end

    it 'how_many_bandが空では登録できない' do
      @user.how_many_band=''
      @user.valid?
      expect(@user.errors.full_messages).to include"経験したバンド数を入力してください"
    end
    it 'how_many_bandが0未満だと登録できない' do
      @user.how_many_band=-1
      @user.valid?
      expect(@user.errors.full_messages).to include"経験したバンド数は0以上の値にしてください"
    end
    it 'how_many_bandが9999を超過すると登録できない' do
      @user.how_many_band=10000
      @user.valid?
      expect(@user.errors.full_messages).to include"経験したバンド数は9999以下の値にしてください"
    end

    it 'how_many_composeが空では登録できない' do
      @user.how_many_compose=''
      @user.valid?
      expect(@user.errors.full_messages).to include"オリジナル曲数を入力してください"
    end
    it 'how_many_composeが0未満だと登録できない' do
      @user.how_many_compose=-1
      @user.valid?
      expect(@user.errors.full_messages).to include"オリジナル曲数は0以上の値にしてください"
    end
    it 'how_many_composeが9999を超過すると登録できない' do
      @user.how_many_compose=10000
      @user.valid?
      expect(@user.errors.full_messages).to include"オリジナル曲数は9999以下の値にしてください"
    end

    it 'favorite_artistが空では登録できない' do
      @user.favorite_artist=''
      @user.valid?
      expect(@user.errors.full_messages).to include"好きなアーティストを入力してください"
    end
    it 'URLが空では登録できない' do
      @user.URL=''
      @user.valid?
      expect(@user.errors.full_messages).to include"音源リンクを入力してください"
    end
    it 'careerが空では登録できない' do
      @user.career=''
      @user.valid?
      expect(@user.errors.full_messages).to include"音楽活動歴を入力してください"
    end
    it 'sex_idが空では登録できない' do
      @user.sex_id=''
      @user.valid?
      expect(@user.errors.full_messages).to include"性別を入力してください"
    end
    it 'sex_idが1では登録できない' do
      @user.sex_id=1
      @user.valid?
      expect(@user.errors.full_messages).to include"性別を選んでください"
    end
    it 'character_idが空では登録できない' do
      @user.character_id=''
      @user.valid?
      expect(@user.errors.full_messages).to include"性格を入力してください"
    end
    it 'character_idが1では登録できない' do
      @user.character_id=1
      @user.valid?
      expect(@user.errors.full_messages).to include"性格を選んでください"
    end
    it 'what_play_idが空では登録できない' do
      @user.what_play_id=''
      @user.valid?
      expect(@user.errors.full_messages).to include"演奏パートを入力してください"
    end
    it 'what_play_idが1では登録できない' do
      @user.what_play_id=1
      @user.valid?
      expect(@user.errors.full_messages).to include"演奏パートを選んでください"
    end
    it 'genre_idが空では登録できない' do
      @user.genre_id=''
      @user.valid?
      expect(@user.errors.full_messages).to include"ジャンルを入力してください"
    end
    it 'genre_idが1では登録できない' do
      @user.genre_id=1
      @user.valid?
      expect(@user.errors.full_messages).to include"ジャンルを選んでください"
    end
    it 'prefecture_idが空では登録できない' do
      @user.prefecture_id=''
      @user.valid?
      expect(@user.errors.full_messages).to include"居住都道府県を入力してください"
    end
    it 'prefecture_idが1では登録できない' do
      @user.prefecture_id=1
      @user.valid?
      expect(@user.errors.full_messages).to include"居住都道府県を選んでください"
    end
    it 'active_day_idが空では登録できない' do
      @user.active_day_id=''
      @user.valid?
      expect(@user.errors.full_messages).to include"活動日を入力してください"
    end
    it 'active_day_idが1では登録できない' do
      @user.active_day_id=1
      @user.valid?
      expect(@user.errors.full_messages).to include"活動日を選んでください"
    end
    it 'skill_idが空では登録できない' do
      @user.skill_id=''
      @user.valid?
      expect(@user.errors.full_messages).to include"演奏力の目安を入力してください"
    end
    it 'skill_idが1では登録できない' do
      @user.skill_id=1
      @user.valid?
      expect(@user.errors.full_messages).to include"演奏力の目安を選んでください"
    end
    it 'leader_or_member_idが空では登録できない' do
      @user.leader_or_member_id=''
      @user.valid?
      expect(@user.errors.full_messages).to include"募集希望または加入希望を入力してください"
    end
    it 'leader_or_member_idが1では登録できない' do
      @user.leader_or_member_id=1
      @user.valid?
      expect(@user.errors.full_messages).to include"募集希望または加入希望を選んでください"
    end
  end
  end


#bundle exec rspec spec/models/user_spec.rb
#nickname
#email
#password
#password_confirmation 
#nickname
#date_of_birth
#introduction
#how_long_play
#how_long_blank
#how_long_band
#how_many_band
#how_many_compose
#favorite_artist
#URL
#career
#sex_id
#character_id
#what_play_id
#genre_id
#prefecture_id
#active_day_id
#skill_id
#leader_or_member_id
end