class HomeController < ApplicationController
  def index
    render json: {
      message: "Hi",
    }
  end
end
