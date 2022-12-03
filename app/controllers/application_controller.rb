class ApplicationController < ActionController::Base
    before_action :authenticate_user!, only: %i[profile]

    def index        
    end
    
    def profile
    end

    def events_for_this_category
        @category = Category.find(params[:category])
    end
    
    def events
        @events = Myevent.all
        @category = Category.find(params[:category])
    end
    
    def make_this_event_for_this_category
        @category = Category.find(params[:category])
        @event = Myevent.find(params[:event])
        @category.myevents << @event
        flash[:success] = "Event added to this category"
        redirect_to categories_path
    end
    

end