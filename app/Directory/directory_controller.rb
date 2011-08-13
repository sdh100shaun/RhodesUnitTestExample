require 'rho/rhocontroller'
require 'helpers/browser_helper'

class DirectoryController < Rho::RhoController
  include BrowserHelper

  #GET /Directory
  def index
    @directories = Directory.find(:all)
    render :back => '/app'
  end

  # GET /Directory/{1}
  def show
    @directory = Directory.find(@params['id'])
    if @directory
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /Directory/new
  def new
    @directory = Directory.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /Directory/{1}/edit
  def edit
    @directory = Directory.find(@params['id'])
    if @directory
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /Directory/create
  def create
    @directory = Directory.create(@params['directory'])
    redirect :action => :index
  end

  # POST /Directory/{1}/update
  def update
    @directory = Directory.find(@params['id'])
    @directory.update_attributes(@params['directory']) if @directory
    redirect :action => :index
  end

  # POST /Directory/{1}/delete
  def delete
    @directory = Directory.find(@params['id'])
    @directory.destroy if @directory
    redirect :action => :index  end
end
