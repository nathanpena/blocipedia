class WikisController < ApplicationController
  before_action :set_wiki, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @wikis = Wiki.all
    respond_with(@wikis)
  end

  def show
    respond_with(@wiki)
  end

  def new
    @wiki = Wiki.new
    respond_with(@wiki)
  end

  def edit
    @wiki = Wiki.find(params[:id])
  end

  def create
    @wiki = Wiki.new(wiki_params)
    @wiki.user_id = current_user.id
    @wiki.save
    respond_with(@wiki)
  end

  def update
    @wiki.update(wiki_params)
    respond_with(@wiki)
  end

  def destroy
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
