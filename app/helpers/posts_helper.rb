module PostsHelper

  def format_timestamp(datetime)
    "#{datetime.strftime('%F %T %Z')} (#{time_ago_in_words(datetime)})"
  end
end
