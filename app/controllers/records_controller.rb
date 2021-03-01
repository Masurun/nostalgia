class RecordsController < ApplicationController
    before_action :authenticate_user!,except:[:index,:show]
    before_action :set_record,  only:[:show,:edit,:destroy,:update]
  
    def index
      @records = Record.all.includes(:user).order(created_at: :desc)
    end
  
    def new
      @record = Record.new
    end
  
    def search
      return nil if params[:keyword] == ""
      tag = Tag.where(['name LIKE(?)', "%#{params[:keyword]}%"] )
      render json:{ keyword: tag }
    end
  
    def create
      @record = RecordsTag.new(record_params)
   
      if @record.valid?
        @record.save
      return redirect_to records_path
      else
        render :new
      end
    end
  
    def show
    end
  
    def edit
    end
  
    def update
      if @record.update(record_params)
        redirect_to record_path(@record.id)
      else
        render :edit
      end
    end
  
    def destroy
        if @record.destroy
          redirect_to records_path
        end
    end
  
    private
    def record_params
      params.require(:record).permit(:content,:title,:tag_name).merge(user_id: current_user.id)
    end
    def set_record
      @record = Record.find(params[:id])
    end
  end

