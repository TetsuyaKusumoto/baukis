class Admin::TopController < Admin::Base
  def index
    #raise IpAddressRejected
    render 'index'
  end
end
