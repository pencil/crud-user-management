class UsersController < ApplicationController
  active_scaffold :user do |config|
    config.columns = [:login, :password, :password_confirmation]
    list.columns.exclude :password, :password_confirmation
    show.columns.exclude :password, :password_confirmation

    columns[:password].form_ui = :password
    columns[:password_confirmation].form_ui = :password
  end
end