class PokemonsController < ApplicationController
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer_id = current_trainer.id
    pokemon.save
    redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    pokemon.health -= 10
    pokemon.save
    if pokemon.health <= 0
      pokemon.destroy
    end
    redirect_to trainer_path(id: params[:trainer])
  end

  def new
  end

  def create
    pokemon = Pokemon.new(:name => params[:pokemon][:name], :health => 100, :level => 1, :trainer_id => current_trainer.id)
    if !pokemon.valid?
      redirect_to new_pokemon_path
      flash[:error] = pokemon.errors.full_messages.to_sentence
    else
      pokemon.save
      redirect_to trainer_path(id: current_trainer.id)
    end
  end
end
