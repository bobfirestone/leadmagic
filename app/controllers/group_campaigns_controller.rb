class GroupCampaignsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @groups = GroupCampaign.all
  end
  
  def show
    @group_campaign = GroupCampaign.find(params[:id])
  end

  def new
    @group_campaign = GroupCampaign.new
  end

  def create
    @group_campaign = GroupCampaign.new(params[:group_campaign])
    if @group_campaign.save
      redirect_to @group_campaign, :notice => "Successfully created group campaign information."
    else
      render :action => 'new'
    end
  end

  def edit
    @group_campaign = GroupCampaign.find(params[:id])
  end

  def update
    @group_campaign = GroupCampaign.find(params[:id])
    if @group_campaign.update_attributes(params[:group_campaign])
      redirect_to @group_campaign, :notice  => "Successfully updated group campaign."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @group_campaign = GroupCampaign.find(params[:id])
    @group_campaign.destroy
    redirect_to campaigns_url, :notice => "Successfully destroyed group campaign."
  end

end
