class TargetsController < ApplicationController
  def index
    @targets = Target.all
  end

  def show
    @target = Target.find(params[:id])
  end

  def new
    @target = Target.new
  end

  def edit
    @target = Target.find(params[:id])
  end

  def create
    @target = Target.new(params[:target])

    if @target.save
      redirect_to targets_path, notice: 'Target was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @target = Target.find(params[:id])

    if @target.update_attributes(params[:target])
      redirect_to @target, notice: 'Target was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @target = Target.find(params[:id])
    @target.destroy

    redirect_to targets_url
  end
end
