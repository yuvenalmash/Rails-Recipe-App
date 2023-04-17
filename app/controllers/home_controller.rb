class HomeController < ApplicationController
    def Index
    @users = user.all
    end
end
