class ConsultController < ApplicationController
  def law
    @consult = Consult.new
    @consult.question_type = 'law'
  end

  def register
  end

  def justice

  end

  def flow

  end

  def feedback

  end

  def complain

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
