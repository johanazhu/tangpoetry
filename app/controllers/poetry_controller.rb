class PoetryController < ApplicationController
  def random
    random = Poetry.find(rand(1...43030))
    render json: { data: random }
  end
  # /poetry/title/静夜思
  def title
    result = Poetry.find_by(title: params[:title])
    render json: { data: result }
  end
  # /poetry/author/李白
  def author
    author = Poet.find_by(name: params[:author])
    # print(@author[:id])
    result = Poetry.where({poet_id:  author[:id]})
    render json: { data: result }
  end
  # /poetry/author/张若虚/title/春江花月夜
  def author_title
    author = Poet.find_by(name: params[:author])
    result = Poetry.where({poet_id:  author[:id], title: params[:title]})
    render json: { data: result }
  end


end
