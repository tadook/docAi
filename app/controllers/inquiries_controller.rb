class InquiriesController < ApplicationController
  def new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.save
    redirect_to @inquiry
  end

  def show
      @inquiry = Inquiry.find(params[:id])
  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:age, :sex, :weight, :height)
    end
end
