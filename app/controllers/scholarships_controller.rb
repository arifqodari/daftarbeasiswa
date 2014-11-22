class ScholarshipsController < ApplicationController
  before_filter :authenticate_user, :except => [:show]

  def new
    @scholarship = Scholarship.new
  end

  def create
    @scholarship = Scholarship.new(scholarship_param)
    @scholarship.save

    redirect_to root_path
  end

  def edit
    @scholarship = Scholarship.friendly.find(params[:id])
  end

  def update
    @scholarship = Scholarship.friendly.find(params[:id])

    if @scholarship.update(scholarship_param)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @scholarship = Scholarship.friendly.find(params[:id])
    @scholarship.destroy

    redirect_to root_path
  end

  def show
    @scholarship = Scholarship.friendly.find(params[:id])
  end

  private
  def scholarship_param
    params.require(:scholarship).permit(
      :title,
      :description,
      :opening_date,
      :closing_date,
      :category,
      :major
    )
  end
end
