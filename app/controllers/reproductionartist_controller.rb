class ReproArtistController < ApplicationController

def new

end

def create
end


def show_profile
end


end


def index
    @stories = params[:q] ? Story.search(params[:q]).order("created_at DESC") : Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
  end

  def edit
    @story = Story.find(params[:id])
  end

  def create
    @story = current_user.stories.build story_params

    if @story.save!
       redirect_to @story
    else
      render 'new'
    end
  end

  def update
    @story = Story.find(params[:id])

    if @story.update(story_params)
      redirect_to @story
    else
      render 'edit'
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy

    redirect_to stories_path
  end

private
  def story_params
    params.require(:story).permit(:title, :link, :upvotes, :category)
  end
end
