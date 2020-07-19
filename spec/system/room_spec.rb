require 'rails_helper'
RSpec.describe 'Room', type: :system do
  describe '部屋のテスト' do
    let!(:user) { create(:user) }
    let!(:test_user2) { create(:user) }

    before do
      visit new_user_session_path
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: user.password
      click_button 'ログイン'
    end
    describe '部屋一覧画面のテスト' do
	    let(:house) { create(:house, user_id: user.id) }
	    let!(:room1) { create(:room, user_id: user.id, house_id: house.id) }
	    let!(:room2) { create(:room, user_id: user.id, house_id: house.id) }
	    let!(:room3) { create(:room, user_id: user.id, house_id: house.id) }

	    before do
	    	visit user_rooms_path(user)
	    end

      context '自分の部屋一覧画面への遷移' do
      	it '遷移できる' do
          expect(current_path).to eq('/users/' + user.id.to_s + '/rooms' )
      	end
      end
      context '他人の部屋一覧画面への遷移' do
      	it '遷移できる' do
      		visit user_rooms_path(test_user2)
          expect(current_path).to eq('/users/' + test_user2.id.to_s + '/rooms')
      	end
      end

      context '表示の確認' do
				it '部屋の作成フォームが表示される' do
          expect(page).to have_field 'room[name]'
        end
        it '他人の一覧には部屋作成フォームが表示されない' do
        	visit user_rooms_path(test_user2)
          expect(page).not_to have_field 'room[name]'
          expect(current_path).to eq('/users/' + test_user2.id.to_s + '/rooms')
        end
        it '検索フォームが表示される' do
          expect(page).to have_field 'q[name_cont]'
        end
        it '並び替えリンクが表示される' do
        	expect(page).to have_link '名前順'
        	expect(page).to have_link '更新順'
        end
        it '「部屋一覧」が表示される' do
        	expect(page).to have_content '部屋一覧'
        end
        it '部屋の名前のリンクが表示される' do
        	expect(page).to have_link room1.name, href: room_path(room1)
        	expect(page).to have_link room2.name, href: room_path(room2)
        	expect(page).to have_link room3.name, href: room_path(room3)
        end
        it 'マイページへのリンクが表示される' do
          expect(page).to have_link '<< マイページへ', href: user_path(user)
        end

      end
    end
  end
end

