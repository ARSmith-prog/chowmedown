class FoodsController < ApplicationController
      before_action :authenticate_user!, excpet: [:show , :index]
  def index
  end
end
