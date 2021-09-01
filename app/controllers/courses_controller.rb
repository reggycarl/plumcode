class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  #Show Course Details and display it in the show_details template
   def show_details
    @courses = Course.all
    # course_id=params[:id]
    # @course_details = CourseDetail.find_by(id: course_id)
    course_id = params[:id]  
     @show_course_details= CourseDetail.joins("INNER JOIN courses ON courses.id = course_details.course_id
                  ").select('course_name,course_image,amount,tutor_name,tutor_info,course_level,category,course_description,course_duration,lecture_hours,course_curriculum,course_details.created_at').where(course_id: course_id)
    logger.info @show_course_details.inspect
    logger.info "show course name: #{@show_course_details[0].course_name}"
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:course_name, :course_image, :amount, :tutor_name, :tutor_info, :course_level, :category)
    end
end
