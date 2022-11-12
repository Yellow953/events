class MyeventsController < ApplicationController
  before_action :authenticate_user!, only: %i[index show edit create update destroy attend]
  before_action :set_myevent, only: %i[ show edit update destroy ]

  def index
    @myevents = Myevent.all
  end

  def show
  end

  def new
    @myevent = Myevent.new
  end

  def edit
  end

  def create
    @myevent = Myevent.new(myevent_params)

    if @myevent.save
      flash[:success] = "Event was successfully created." 
      redirect_to myevent_url(@myevent)
    else
      flash[:danger] = "There was a problem!"
      redirect_to new_myevent_url   
    end
  end

  def update
    if @myevent.update(myevent_params)
      flash[:warning] = "Event was successfully updated."
      redirect_to myevent_url(@myevent);
    else
      flash[:danger] = "There was a problem."
      redirect_to edit_myevent_url(@myevent);
    end
  end

  def destroy
    @myevent.destroy
    flash[:danger] = "Event was successfully destroyed." 
    redirect_to myevents_url
  end

  def attend
    @event = Myevent.find(params[:id])
    current_user.events << @event
    redirect_to myevents_url
  end
  

  private
    def set_myevent
      @myevent = Myevent.find(params[:id])
    end

    def myevent_params
      params.require(:myevent).permit(:name, :event_date, :user_id)
    end
end
