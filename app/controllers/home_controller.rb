class HomeController < ApplicationController

  def index
    @scholarships = Scholarship.where(major: "S1").order(closing_date: :asc)
  end
end
