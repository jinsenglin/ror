class DataController < ApplicationController
  def index
    if params[:draw] == nil
        draw = 1
    else
        draw = Integer(params[:draw]) + 1
    end

    if params[:start] == nil
        start = 0
    else
        start = Integer(params[:start])
    end

    if params[:length] == nil
        length = 10
    else
        length = Integer(params[:length])
    end

    if params[:search] == nil
        search_value = ""
    else
        search_value = params[:search][:value]
    end

    data = []

    @articles = Article.all
    @articles.each do |article|
        data.push([article.title])        
    end

    ds = {
        "draw": draw,
        "recordsTotal": @articles.count,
        "recordsFiltered": @articles.count,
        "data": data
    }
    render :json => ds
  end
end
