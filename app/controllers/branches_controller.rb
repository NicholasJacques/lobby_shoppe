class BranchesController < ApplicationController

  def show
    @branch = Branch.find(params[:category_slug])
  end

  private

end
