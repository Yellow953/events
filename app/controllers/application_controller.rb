class ApplicationController < ActionController::Base
    before_action :authenticate_user!, only: %i[profile]

    def index        
    end
    
    def profile
    end

end