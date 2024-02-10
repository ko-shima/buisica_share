class CardsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_action :set_item, only: [:edit, :show, :update, :destroy]

  def index
    @cards = Card.all.order('created_at DESC')
  end

  def new
    @card = Card.new
  end



  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def show
  end

  def edit
  end

  def update
    if @card.update(card_params)
      redirect_to card_path(@card)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @card.destroy
    redirect_to root_path
  end

  private

  def card_params
    params.require(:card).permit(:client_last_name, :client_first_name, :company_name, :client_email, :client_department,
                                 :client_phone_number, :description, :image).merge(user_id: current_user.id)
  end

  def set_item
    @card = Card.find(params[:id])
  end
end
