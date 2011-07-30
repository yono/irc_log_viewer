class NicksController < ApplicationController
  # GET /nicks
  # GET /nicks.xml
  def index
    @nicks = Nick.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nicks }
    end
  end

  # GET /nicks/1
  # GET /nicks/1.xml
  def show
    @nick = Nick.find(params[:id])
    @logs = Log.where(:nick_id => @nick).order('created_on DESC').page params[:page]

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nick }
    end
  end

  # GET /nicks/new
  # GET /nicks/new.xml
  def new
    @nick = Nick.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nick }
    end
  end

  # GET /nicks/1/edit
  def edit
    @nick = Nick.find(params[:id])
  end

  # POST /nicks
  # POST /nicks.xml
  def create
    @nick = Nick.new(params[:nick])

    respond_to do |format|
      if @nick.save
        format.html { redirect_to(@nick, :notice => 'Nick was successfully created.') }
        format.xml  { render :xml => @nick, :status => :created, :location => @nick }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nick.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nicks/1
  # PUT /nicks/1.xml
  def update
    @nick = Nick.find(params[:id])

    respond_to do |format|
      if @nick.update_attributes(params[:nick])
        format.html { redirect_to(@nick, :notice => 'Nick was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nick.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nicks/1
  # DELETE /nicks/1.xml
  def destroy
    @nick = Nick.find(params[:id])
    @nick.destroy

    respond_to do |format|
      format.html { redirect_to(nicks_url) }
      format.xml  { head :ok }
    end
  end
end
