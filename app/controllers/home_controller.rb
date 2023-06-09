class HomeController < ApplicationController
  def index
    render json: {
      message: "Hi",
      apilist: [
        "/poetry/random",
        "/poetry/title/静夜思",
        "/poetry/author/李白",
        "/poetry/author/张若虚/title/春江花月夜"
      ]
    }
  end
end
