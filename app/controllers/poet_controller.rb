class PoetController < ApplicationController
  # 通过创作数量排名
  def list
    # Client.order(created_at: :desc)
    # result = Poetry.order(poet_id: :asc).limit(4)
    # result = Poetry.find(:all,  :order => "poet_id_count DESC").limit(4)
    # order(poet_id_count: :desc).limit(4)
    # result = Poetry.order(poet_id: :desc).limit(4)
    # result = Poetry.order('COUNT(poet.id) DESC').limit(10)
    # result = Poetry.joins(:Poetry).order('COUNT(geochecks.id) DESC').group('poet_id')
    # result =  Poetry.all.sort_by{ |u| u.poet_id.count}
    # result = Poetry.order("poet_id ASC").limit(4).offset(10)
    # result = User.where(name: 'David', occupation: 'Code Artist').order(created_at: :desc)
    # result = Poetry.where("poet_id < 2")
    # result = Poetry.count
    result = Poetry.joins(:poets).order('COUNT(poet.id) DESC').group('poet.id')
    print(result)
    # test = Poet.order(id:)
    # result = Poetry.order(:poet_id).limit(4)
    render json: { data: result }
  end

end
