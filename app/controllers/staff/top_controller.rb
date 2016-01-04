class Staff::TopController < Staff::Base
  skip_before_action :authorize
  def index
    #raise
    render 'index'
  end
end
