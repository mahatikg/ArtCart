class ReproartistsController < ApplicationController
    before_action :authenticate_reproartist!, only: [ :edit, :update ]
    # skip_before_action :conditionally_finish_signup!, only: [ :show, :edit, :update ]

    #changed before_filter to before_action

    def show
      @reproartist = Reproartist.find(params[:id])
    end


    def profile
      #@reproartist = current_reproartist(:artpiece)
    end


    def edit
      @reproartist = current_reproartist
    end


    def update
      @reproartist = Reproartist.find(params[:id])
      #binding.pry
            if @reproartist.update(reproartist_params)
              render 'show'
            else
              render 'edit'
            end
    end


    def destroy
        @reproartist = Reproartist.find(params[:id])
        @reproartist.destroy

        redirect_to reproartist_path
      end

    private
      def reproartist_params
        params.require(:reproartist).permit(:name, :style_id)
      end
end
