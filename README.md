Failures:

  1) [STEP3] 仕上げのテスト 他人の画面のテスト 他人の投稿詳細画面のテスト サイドバーの確認 他人のユーザ編集画面へのリンクが存在する
     Failure/Error: expect(page).to have_link '', href: edit_user_path(other_user)
       expected to find link "" with href "/users/2/edit" but there were no matches
     # ./spec/system/03_finishing_touches_spec.rb:248:in `block (5 levels) in <main>'

  2) [STEP3] 仕上げのテスト 他人の画面のテスト 他人のユーザ詳細画面のテスト サイドバーの確認 他人のユーザ編集画面へのリンクが存在する
     Failure/Error: expect(page).to have_link '', href: edit_user_path(other_user)
       expected to find link "" with href "/users/2/edit" but there were no matches
     # ./spec/system/03_finishing_touches_spec.rb:297:in `block (5 levels) in <main>'


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
