class ArticleReadingListsController < ApplicationController
  before_action :set_article_reading_list, only: [:show, :edit, :update, :destroy]

  # GET /article_reading_lists
  # GET /article_reading_lists.json
  def index
    @article_reading_lists = ArticleReadingList.all
  end

  # GET /article_reading_lists/1
  # GET /article_reading_lists/1.json
  def show
  end

  # GET /article_reading_lists/new
  def new
    @article_reading_list = ArticleReadingList.new
  end

  # GET /article_reading_lists/1/edit
  def edit
  end

  # POST /article_reading_lists
  # POST /article_reading_lists.json
  def create
    @article_reading_list = ArticleReadingList.new(article_reading_list_params)

    respond_to do |format|
      if @article_reading_list.save
        format.html { redirect_to @article_reading_list, notice: 'Article reading list was successfully created.' }
        format.json { render :show, status: :created, location: @article_reading_list }
      else
        format.html { render :new }
        format.json { render json: @article_reading_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_reading_lists/1
  # PATCH/PUT /article_reading_lists/1.json
  def update
    respond_to do |format|
      if @article_reading_list.update(article_reading_list_params)
        format.html { redirect_to @article_reading_list, notice: 'Article reading list was successfully updated.' }
        format.json { render :show, status: :ok, location: @article_reading_list }
      else
        format.html { render :edit }
        format.json { render json: @article_reading_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_reading_lists/1
  # DELETE /article_reading_lists/1.json
  def destroy
    @article_reading_list.destroy
    respond_to do |format|
      format.html { redirect_to article_reading_lists_url, notice: 'Article reading list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_reading_list
      @article_reading_list = ArticleReadingList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_reading_list_params
      params.require(:article_reading_list).permit(:article_id, :reading_list_id, :state, :active)
    end
end
