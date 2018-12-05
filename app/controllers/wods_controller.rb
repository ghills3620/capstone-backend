class WodsController < OpenReadController
  before_action :set_wod, only: [:update, :destroy]

  # GET /wods
  def index
    @wods = Wod.all

    render json: @wods
  end

  # GET /wods/1
  def show
    render json: Wod.find(params[:id])
  end

  # POST /wods
  def create
    @wod = current_user.wods.build(wod_params)

    if @wod.save
      render json: @wod, status: :created
    else
      render json: @wod.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wods/1
  def update
    if @wod.update(wod_params)
      render json: @wod
    else
      render json: @wod.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wods/1
  def destroy
    @wod.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wod
      @wod = current_user.wods.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wod_params
      params.require(:wod).permit(:user_id, :metcon, :result)
    end
end
# need to deploy
