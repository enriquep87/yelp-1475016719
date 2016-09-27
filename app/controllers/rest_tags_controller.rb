class RestTagsController < ApplicationController
  def index
    @rest_tags = RestTag.all
  end

  def show
    @rest_tag = RestTag.find(params[:id])
  end

  def new
    @rest_tag = RestTag.new
  end

  def create
    @rest_tag = RestTag.new
    @rest_tag.restaurant_id = params[:restaurant_id]
    @rest_tag.tag_id = params[:tag_id]

    if @rest_tag.save
      redirect_to "/rest_tags", :notice => "Rest tag created successfully."
    else
      render 'new'
    end
  end

  def edit
    @rest_tag = RestTag.find(params[:id])
  end

  def update
    @rest_tag = RestTag.find(params[:id])

    @rest_tag.restaurant_id = params[:restaurant_id]
    @rest_tag.tag_id = params[:tag_id]

    if @rest_tag.save
      redirect_to "/rest_tags", :notice => "Rest tag updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @rest_tag = RestTag.find(params[:id])

    @rest_tag.destroy

    redirect_to "/rest_tags", :notice => "Rest tag deleted."
  end
end
