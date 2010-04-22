class BedrijfsController < ApplicationController
  # GET /bedrijfs
  # GET /bedrijfs.xml
  before_filter :require_user, :only => [:index, :new, :create, :show, :edit, :update]
  def index
    @bedrijf = @current_user
    @category = Category.find(params[:category_id])
    if (params[:search].nil?)
      @bedrijfs = @category.bedrijfs

    else
      @bedrijfs = Bedrijf.search(params[:search])
    end



    #@bedrijfs = Bedrijf.all

    #    respond_to do |format|
    #      format.html # index.html.erb
    #      format.xml  { render :xml => @bedrijfs }
    #    end
  end

  # GET /bedrijfs/1
  # GET /bedrijfs/1.xml
  def show
      @bedrijf = @current_user
      @category = Category.find(params[:category_id])
      @bedrijf = @category.bedrijfs.find(params[:id])

    
      #
      #    respond_to do |format|
      #      format.html # show.html.erb
      #      format.xml  { render :xml => @bedrijf }
      #    end
  end

    # GET /bedrijfs/new
    # GET /bedrijfs/new.xml
    def new
      @bedrijf = @current_user
      @category = Category.find(params[:category_id])
      @bedrijf = @category.bedrijfs.build
      #@bedrijf = Bedrijf.new

      #    respond_to do |format|
      #      format.html # new.html.erb
      #      format.xml  { render :xml => @bedrijf }
      #    end
    end

    # GET /bedrijfs/1/edit
    def edit
      @category = Category.find(params[:category_id])
      @bedrijf = @category.bedrijfs.find(params[:id])
    end

    # POST /bedrijfs
    # POST /bedrijfs.xml
    def create
      @category = Category.find(params[:category_id])
      @bedrijf = @category.bedrijfs.build(params[:bedrijf])
      if @bedrijf.save
        redirect_to category_bedrijf_url(@category, @bedrijf)
      else
        render :action => "new"
      end


      #    @bedrijf = Bedrijf.new(params[:bedrijf])
      #
      #    respond_to do |format|
      #      if @bedrijf.save
      #        flash[:notice] = 'Bedrijf was successfully created.'
      #        format.html { redirect_to(@bedrijf) }
      #        format.xml  { render :xml => @bedrijf, :status => :created, :location => @bedrijf }
      #      else
      #        format.html { render :action => "new" }
      #        format.xml  { render :xml => @bedrijf.errors, :status => :unprocessable_entity }
      #      end
      #    end
    end

    # PUT /bedrijfs/1
    # PUT /bedrijfs/1.xml
    def update
      @category = Category.find(params[:category_id])
      @bedrijf = Bedrijf.find(params[:id])
      if @bedrijf.update_attributes(params[:bedrijf])
        redirect_to category_bedrijf_url(@category, @bedrijf)
      else
        render :action => "edit"

        #    @bedrijf = Bedrijf.find(params[:id])
        #
        #    respond_to do |format|
        #      if @bedrijf.update_attributes(params[:bedrijf])
        #        flash[:notice] = 'Bedrijf was successfully updated.'
        #        format.html { redirect_to(@bedrijf) }
        #        format.xml  { head :ok }
        #      else
        #        format.html { render :action => "edit" }
        #        format.xml  { render :xml => @bedrijf.errors, :status => :unprocessable_entity }
        #      end
      end
    end

    # DELETE /bedrijfs/1
    # DELETE /bedrijfs/1.xml
    def destroy
      @category = Category.find(params[:category_id])
      @bedrijf = Bedrijf.find(params[:id])
      @bedrijf.destroy
      respond_to do |format|
        format.html { redirect_to category_bedrijfs_path(@category) }
        format.xml { head :ok }
      end

      #    @bedrijf = Bedrijf.find(params[:id])
      #    @bedrijf.destroy
      #
      #    respond_to do |format|
      #      format.html { redirect_to(bedrijfs_url) }
      #      format.xml  { head :ok }
      #    end
    end
  end
