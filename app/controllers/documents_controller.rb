class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  def index
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @documents }
    end
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @document }
    end
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.find_or_create_by(name: document_params[:name])
    if @document.save
      respond_to do |format|
        format.html { redirect_to document_path(@document), layout: false }
        format.json { render json: @document }
      end
    else
      redirect_to root_path
    end
  end

  def edit
  end
  
  def update
    @document.update(document_params)
    if @document.save
      flash[:notice] = "Caregiver updated."
      redirect_to document_path(@document)
    else
      render :new
    end
  end
  
  def destroy
    @document.reset_user_document_id
    if @document.delete
      flash[:notice] = "Caregiver deleted, user must choose new document."
      redirect_to documents_path
    else
      flash[:notice] = @document.errors.full_messages
      redirect_to document_path(@document)
    end
  end

  private
    def set_document
      @document = Document.find_by_id(params[:id])
    end
    def document_params
      params.require(:document).permit(:name)
    end
end

