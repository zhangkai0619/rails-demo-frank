jQuery ->
  if $('#infinite-scrolling').size() > 0
  
    $(window).on 'scroll', ->
        more_comments_url = $('.pagination .next_page').attr('href')
    
        test = $('.pagination .next_page').attr('href')
        console.log("Hello, #{more_comments_url}!, #{test}")
        if more_comments_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
            $('.pagination').html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />')
            $.getScript more_comments_url
            console.log("load more triggered")
        return
      return