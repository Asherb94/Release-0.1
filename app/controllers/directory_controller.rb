class DirectoryController < ApplicationController
  def search
  end
  
  def results
  end

  def results
     @partial_name = "%" + params[:partial_name] + "%"
    @theater = Theater.where("fullname like ?", @partial_name)
  end
  
end
