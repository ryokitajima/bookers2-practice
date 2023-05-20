# README
class Book < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_one_attached :image
  belongs_to :user
end

#books_index
 def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end


<h2>User info</h2>
<h4>画像</h4>
  <% if @user.image.attached? %>
    <%= image_tag @user.image, size: "200x200" %>
  <% else %>
    <%= image_tag 'no_image', size: "200x200" %>
  <% end %>
<ul>
<li>name <%= @user.name %></li>
<li>introduction <%= @user.introduction %></li>
<li>
  <%= link_to "edit", edit_user_path(current_user) %>
</li>
</ul>

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
