module Menu
  class PositionsController < ApplicationController

    expose(:position, attributes: :position_params)
    expose(:positions) { Position.all }

    def index
    end

    def new
    end

    def create
      if position.save
        redirect_to menu_positions_path, notice: 'Position was successfully created.'
      else
        render :new
      end
    end

    def edit
    end

    def update
      if position.update(position_params)
        redirect_to menu_positions_path, notice: 'Position was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      position.destroy
      redirect_to menu_positions_path, notice: 'Position was successfully destroyed.'
    end

    private

    def position_params
      params.require(:position).permit(:name, :price, :image)
    end

  end
end
