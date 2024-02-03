class CardsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update, :destroy]

  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def show
  end

  def edit
  end


  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def card_params
    params.require(:card).permit(:client_last_name, :client_first_name, :company_name, :client_email, :client_department, :client_phone_number ,:description, :image).merge(user_id: current_user.id)
  end

  def set_item
    @card = Card.find(params[:id])
  end

end
