class ChapterElementsController < ApplicationController
  before_action :set_chapter_element, only: [:show, :edit, :update, :destroy]

  # GET /chapter_elements
  # GET /chapter_elements.json
  def index
    @chapter_elements = ChapterElement.all
  end

  # GET /chapter_elements/1
  # GET /chapter_elements/1.json
  def show
  end

  # GET /chapter_elements/new
  def new
    @chapter_element = ChapterElement.new
  end

  # GET /chapter_elements/1/edit
  def edit
  end

  # POST /chapter_elements
  # POST /chapter_elements.json
  def create
    @chapter_element = ChapterElement.new(chapter_element_params)

    respond_to do |format|
      if @chapter_element.save
        format.html { redirect_to @chapter_element, notice: 'Chapter element was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chapter_element }
      else
        format.html { render action: 'new' }
        format.json { render json: @chapter_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapter_elements/1
  # PATCH/PUT /chapter_elements/1.json
  def update
    respond_to do |format|
      if @chapter_element.update(chapter_element_params)
        format.html { redirect_to @chapter_element, notice: 'Chapter element was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chapter_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapter_elements/1
  # DELETE /chapter_elements/1.json
  def destroy
    @chapter_element.destroy
    respond_to do |format|
      format.html { redirect_to chapter_elements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapter_element
      @chapter_element = ChapterElement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapter_element_params
      params.require(:chapter_element).permit(:title, :description, :position)
    end
end
