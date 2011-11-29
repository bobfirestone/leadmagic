class CampaignsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
    @lead = Lead.new
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(params[:campaign])
    if @campaign.save
      redirect_to @campaign, :notice => "Successfully created campaign."
    else
      render :action => 'new'
    end
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])
    if @campaign.update_attributes(params[:campaign])
      redirect_to @campaign, :notice  => "Successfully updated campaign."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy
    redirect_to campaigns_url, :notice => "Successfully destroyed campaign."
  end
end
