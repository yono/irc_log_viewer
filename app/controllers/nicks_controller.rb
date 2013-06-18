class NicksController < ApplicationController
  def show
    @nick = Nick.find(params[:id])
    @logs = Log.where(:nick_id => @nick).order('created_on DESC').page params[:page]
    respond_with @nick
  end
end
