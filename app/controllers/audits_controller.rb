class AuditsController < ApplicationController
  def index

  end
  def new
    @audit = Audit.new

    @audit.name ="Sample"
    @users = User.all
  end
  def edit

  end
  def create
   puts params[:audit]
  end
  def update

  end
end
