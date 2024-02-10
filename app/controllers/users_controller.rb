class UsersController < ApplicationController
  def show
    @cards = current_user.cards
  end
end
