class Api::V1::ScoresController < ApplicationController


    def index
      @scores = Score.all
      render json: @scores
    end

      def new
        @score = Score.new
        render json: @score, status: :ok
      end

      def create
        @score = Score.create(score_params)
        render json: @score, status: :ok
      end

        def destroy
          @score.delete
          @score = Score.find(params[:id])
        end

        private

        def score_params
          params.require(:score).permit(:id, :game_id, :score, :username)
        end

        # t.integer :game_id
        # t.integer :score
        # t.string :username
end
