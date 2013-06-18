class LogsController < ApplicationController
  def index
    respond_with @logs = Log.order('created_on DESC').page(params[:page])
  end

  def show
    respond_with @log = Log.find(params[:id])
  end
end
