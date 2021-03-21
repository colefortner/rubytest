class ApplicationController < ActionController::Base
    def index
        render plain: "Hello"
    end
end
