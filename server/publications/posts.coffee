App.Publication 'Posts', (post_slug) ->
  console.info 'publication:', post_slug
  App.collections.Posts.find slug: post_slug
