class PayStubsController < ApplicationController
  def index
    @pay_stubs = PayStub.all
  end

  def show
  end
end