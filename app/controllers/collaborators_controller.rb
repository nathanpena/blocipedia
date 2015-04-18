class CollaboratorsController < ApplicationController

  def create
    @wiki = Wiki.find(params[:wiki_id])
    @user = User.find(params[:id])
    @collaborator = Collaborator.create(:user => @user, :wiki => @wiki)
    redirect_to edit_wiki_path(@wiki)
  end

  def delete
    @wiki = Wiki.find(params[:wiki_id])
    @collaborator = @wiki.collaborators.where(user_id: params[:id]).first
    @collaborator.destroy
    redirect_to edit_wiki_path(@wiki)
  end


end
