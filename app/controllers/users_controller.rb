class UsersController < ApplicationController
  before_filter :require_login, :only => [:edit, :show]

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      # format.xml  { render :xml => @user }
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        redirect_to root_path, :notice => 'User was successfully updated.'
        # format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        # format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        # format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

end
