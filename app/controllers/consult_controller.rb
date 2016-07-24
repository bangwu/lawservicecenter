class ConsultController < ApplicationController
  def index
    @consults = Consult.all
  end

  def show
    @consult = Consult.find(params[:id]);
  end

  def law
    @consult = Consult.new
    @consult.question_type = '法律咨询'
  end

  def register
    @consult = Consult.new
    @consult.question_type = '立案咨询'
  end

  def justice
    @consult = Consult.new
    @consult.question_type = '司法确认'
  end

  def flow
    @consult = Consult.new
    @consult.question_type = '案件流程查询'
  end

  def feedback
    @consult = Consult.new
    @consult.question_type = '举报投诉'
  end

  def complain
    @consult = Consult.new
    @consult.question_type = '信访申诉'
  end

  def create
    @consult = Consult.new(consult_params)
    @consult.save
    redirect_to consult_law_path
  end

  private
  def consult_params
    params.require(:consult).permit(:question_type, :title, :time, :address, :contact, :phone, :question, :attachment, :member)
  end
end
