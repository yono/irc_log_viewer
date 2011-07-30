class SearchesController < ApplicationController
  def index
    @logs = Log.where('log LIKE ?', "%#{params['q']}%").order('created_on DESC').page params[:page]
    respond_to do |format|
      format.html # search.html.erb
      format.xml  { render :xml => @logs }
    end
  end
end
