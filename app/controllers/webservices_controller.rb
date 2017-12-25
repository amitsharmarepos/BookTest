class WebservicesController < ApplicationController
  before_action :set_webservice, only: [:show, :edit, :update, :destroy]

  # GET /webservices
  # GET /webservices.json
  def index
    #@webservices = Webservice.all
    #printf("Hello");
    @books = Book.all
    render :json =>@books
  end

  # GET /webservices/1
  # GET /webservices/1.json
  def show
    @books = Book.where(:publisher_id => @webservice)
    #@books = Book.find_by_publisher_id(@webservice);
    str = "abc"
    shopArray = []
    @books.each do |book|
      shopArray.push book.shop_id
    end
    res = '{shops:['
    shopArray.uniq.each do |shop|
      @shop = Shop.find(shop)
      res = res+'{'+'"id":'+shop.to_s+','+'"name:":"'+@shop.name+'"'
      #sold count
      @bookcount = Book.where(:publisher_id => @webservice,:sold => true, :shop_id => shop)
      res = res+',"books_sold_count":'+@bookcount.count.to_s
      #instock book
      res = res+',"books_in_stock":['
      @booksinstock = Book.where(:publisher_id => @webservice,:sold => false, :shop_id => shop)
      @booksinstock.each do |bookis|
        #str = str + " book instock  ##{bookis.id} ##{bookis.sold} "
        res = res+'{"id":'+bookis.id.to_s+','+'"name:":"'+bookis.title+'"},'
      end
      res = res.chomp(',')
      res = res+']'
      res = res+'},'
    end
    res = res.chomp(',')
    res = res+']}'
    #render :json =>@books
    render :plain => res
  end

  # GET /webservices/1
  # GET /webservices/1.json
  def publish
    render :json =>@webservice
  end

  # GET /webservices/new
  def new
    @webservice = Webservice.new
  end

  # GET /webservices/1/edit
  def edit
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webservice
      @webservice = params[:id]
    end
end
