class UsersController < ApplicationController
  active_scaffold :user do |config|
    config.columns << [:password, :password_confirmation]
    config.columns.exclude :password_digest
    list.columns.exclude :password, :password_confirmation
    show.columns.exclude :password, :password_confirmation

    list.sorting = {login: 'ASC'}

    columns[:first_name].label = 'First name(s)'
    columns[:password].form_ui = :password
    columns[:password_confirmation].form_ui = :password
  end
end