class BottlesController < ApplicationController

    def new 
        @bottle = Bottle.new
    end

     
    def create
        @bottle = Bottle.new(bottle_params)
    
        if @bottle.save
          redirect_to @bottle
        else
          render :new
        end
    end


    def index
        
        if params[:search]
          @bottles = Bottle.search(params[:search])
          else
            @bottles = Bottle.order_by_rating
          end
    end 
    
    
      def show
        @bottle = Bottle.find(params[:id])
      end
    
      
    
      
    
      def edit
        @bottle = Bottle.find(params[:id])
      end
    
      def update
        @bottle = Bottle.find(params[:id])
    
        @bottle.update(bottle_params)
    
        if @bottle.save
          redirect_to @bottle
        else
          render :edit
        end
      end
    
      def destroy
        @bottle = Bottle.find(params[:id])
        @bottle.destroy
        
        redirect_to bottles_path
      end
    
      private
    
      def bottle_params
        params.require(:bottle).permit(:name,:vintage,:size,:brand,:image,:id,:search)
      end
end
