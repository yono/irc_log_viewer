class ChannelsController < ApplicationController
  def show
    @channel = Channel.find(params[:id])
    @logs = Log.where(:channel_id => @channel).order('created_on DESC').page params[:page]
    respond_with @channel
  end
end
