class NotesController < ApplicationController
  def index
  	@notes = Note.all
  end
  def show
  	@note = Note.find(params[:id])
  end
  def edit
  	@note = Note.find(params[:id])
  end
  def destroy
  	@note = Note.find(params[:id])
  	@note.destroy
  	redirect_to notes_path
  end
  def new
  	@note = Note.new
  end
  def create
  	puts params
  	Note.create(title: params[:note][:title], note: params[:note][:note])
  	redirect_to notes_path
  end
end
