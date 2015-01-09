class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /movies
  # GET /movies.json
  def index
    # @movies = Movie.order(:year => :desc)
    # @movies = Movie.order(year: :desc)
    # @movies = Movie.order("year desc")
    # @movies = Movie.where(:year => (30.years.ago.year..Time.now.year))
    # params[:order] = :year
    # params[:limit] = 2
    # params[:page_num] = 2
    # http://localhost:3000/movies?order=year&limit=2&page_num=2
    
    @movies = Movie.order(params[:order] => :desc).limit(params[:limit])
    @movies = @movies.offset( (params[:page_num].to_i-1) * params[:limit].to_i )

    # Movie.count is different from Array.count as the record of ActiveRecord is different from the element of Array.
    # num_pages = Movie.count/params[:limit]
    # if Movie.count % params[:limit] != 0
    #   num_page += 1
    # end

    num_pages = (Movie.count.to_f/params[:limit]).ceil
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :year, :poster_url, :released)
    end
end
