# frozen_string_literal: true

class PlayersController < ApplicationController
  before_action :authorize, only: %i[index show search]

  def new
    @player = Player.new
  end

  def index
    @players = Player.all
    @player = Player.new
    @current_player = current_player
  end

  # Player Dashboard
  def show
    @player = Player.find(params[:id])
  end

  # Player Search
  def search
    player = Player.find_by(name: params[:name])
    render(json: player.to_json(include: {
                                  characters: {
                                    include: {
                                      faction: { only: :name },
                                    },
                                    only: :name,
                                  },
                                },
                                except: :password_digest))
  end
  # render(
  #   json: player.to_json(
  #     include: {
  #       characters: {
  #         include: {
  #           faction: { only: :name },
  #         },
  #         only: :name,
  #       },
  #     },
  #     except: :password_digest
  #   )
  # )

  # Signup
  def create
    if params[:password] == params[:password_confirmation]
      @player = Player.new(player_params)
      signup
    else
      redirect_to new_player_path
    end
  end

private

  def player_params
    params.require(:player).permit(:name, :password, :password_confirmation)
  end

  def signup
    if @player.save
      session[:player_id] = @player.id
      redirect_to player_path(@player)
    else
      flash[:error] = @player.errors.full_messages
      redirect_to new_player_path
    end
  end
end
