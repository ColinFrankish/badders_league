class PlayersController < ApplicationController


  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to @player
    else
      render "new"
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to @player
    else
      render "edit"
    end
  end

  def destroy
    Player.find(params[:id]).destroy
    redirect_to players_path
  end

  private

  def player_params
    params.require(:player).permit( :firstname, :lastname, :nickname, :singles_wins,
                                    :doubles_wins, :singles_losses, :doubles_losses)
  end

end
