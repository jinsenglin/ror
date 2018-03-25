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

    if search_value == ""
        @articles = Article.all
    else
        @articles = Article.where("title LIKE ?", "%#{search_value}%")
    end

    i = 0
    @articles.each do |article|
        if i >= start
            data.push([article.title])
        end

        i += 1

        if i == (start + length)
            break
        end
    end

    ds = {
        "draw": draw,
        "recordsTotal": Article.all.count,
        "recordsFiltered": @articles.count,
        "data": data
    }
    render :json => ds
  end
end
