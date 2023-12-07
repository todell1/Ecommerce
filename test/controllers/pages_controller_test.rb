require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def home
    render :home
  end
  
  def index
    @pages = Page.all
    render :index
  end

  def show 
    @page = Page.find(params[:id])
    render :show
  end
end
