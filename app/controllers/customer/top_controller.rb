class Customer::TopController < ApplicationController
  def index
    #raise Forbidden
    #raise ActiveRecord::RecordNotFound
    render 'index'
  end
end
