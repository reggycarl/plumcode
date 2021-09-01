class ApplyClassesController < ApplicationController
  before_action :set_apply_class, only: [:show, :edit, :update, :destroy]
# before_action :authenticate_user!,:only => [ :index]
  # GET /apply_classes
  # GET /apply_classes.json
  def index
      @apply_class = ApplyClass.new
      @apply_classes = ApplyClass.all
      @student_id = student_id

      logger.info "USER IFNO #{@user_retrive.inspect}"
  end

   def student_id
    time=Time.new
    strtm = time.strftime("CC"+"%y%m%d%L%H%M")
    return strtm
  end
  
  def list_apply_students
    
    # @list_apply_students = ApplyClass.joins("INNER JOIN users ON users.id = apply_classes.user_id").select('apply_classes.id,last_name,first_name,email,mobile_number,skill_level,reason,apply_classes.created_at').order('apply_classes.id desc')
#     

 @list_apply_students = ApplyClass.select('apply_classes.id,fullname, email, mobile,skill_level,reason,apply_classes.created_at').order('apply_classes.id desc')
   
  end

  # GET /apply_classes/1
  # GET /apply_classes/1.json
  def show
  end

  # GET /apply_classes/new
  def new
    @apply_class = ApplyClass.new
  end

  # GET /apply_classes/1/edit
  def edit
  end

  # POST /apply_classes
  # POST /apply_classes.json
  def create
    # @user_retrive = User.find_by(id: current_user.id)
    @fullname = params[:apply_class][:fullname]
     @email = params[:apply_class][:email]
     
     logger.info "USER IFNO #{@fullname}"
    @apply_class = ApplyClass.new(apply_class_params)
    

    respond_to do |format|
      if @apply_class.save
        logger.info "USER IFNO IN CONTROLLER#{@fullname}"

        UserMailer.pay_course(@fullname,@email).deliver_now
        UserMailer.alert_cybercity_after_apply(@fullname,@email).deliver_now  
        format.html { redirect_to all_courses_path, notice: 'Your application was received successfully. Our team will contact you shortly' }
        format.json { render :show, status: :created, location: @apply_class }
      else
        format.html { render :new }
        format.json { render json: @apply_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apply_classes/1
  # PATCH/PUT /apply_classes/1.json
  def update
    respond_to do |format|
      if @apply_class.update(apply_class_params)
        format.html { redirect_to @apply_class, notice: 'Apply class was successfully updated.' }
        format.json { render :show, status: :ok, location: @apply_class }
      else
        format.html { render :edit }
        format.json { render json: @apply_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apply_classes/1
  # DELETE /apply_classes/1.json
  def destroy
    @apply_class.destroy 
    respond_to do |format|
      format.html { redirect_to apply_classes_url, notice: 'Apply class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apply_class
      @apply_class = ApplyClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apply_class_params
      params.require(:apply_class).permit(:fullname,:mobile,:email,:user_id, :reason, :skill_level,:student_id)
    end
end
