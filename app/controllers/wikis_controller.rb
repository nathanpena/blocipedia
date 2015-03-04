class WikisController < ApplicationController
  before_action :set_wiki, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @wikis = Wiki.visible_to(current_user)
    authorize @wikis
    respond_with(@wikis)
  end

  def show
    authorize @wiki
    respond_with(@wiki)
  end

  def new
    @wiki = Wiki.new
    authorize @wiki
    respond_with(@wiki)
  end

  def edit
    @wiki = Wiki.find(params[:id])
    authorize @wiki
  end

  def create
    @wiki = Wiki.new(wiki_params)
    @wiki.user_id = current_user.id
    authorize @wiki
    @wiki.save
    respond_with(@wiki)
  end

  def update
    @wiki.update(wiki_params)
    authorize @wiki
    respond_with(@wiki)
  end

  def destroy
    authorize @wiki
    @wiki.destroy
    respond_with(@wiki)
  end

  private
    def set_wiki
      @wiki = Wiki.find(params[:id])
    end

    def wiki_params
      params.require(:wiki).permit(:title, :body, :private)
    end
end
