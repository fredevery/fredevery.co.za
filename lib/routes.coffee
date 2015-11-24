Router.route '/', ->
  @render 'HomeIndex'

Router.route '/about', ->
  Session.set 'pageTitle', 'About Me'
  @render 'AboutIndex'

Router.route '/skillset', ->
  Session.set 'pageTitle', 'Skillset'
  @render 'SkillsetIndex'

Router.route '/portfolio', ->
  Session.set 'pageTitle', 'Portfolio'
  @render 'PortfolioIndex'

Router.route '/Post', ->
  @render 'Post',
    data: ->
      title: 'Porta Cursus Fusce Parturient Mollis'
      feature_img: "https://pbs.twimg.com/media/CR_lZtSWcAAwpRd.jpg:large"
      disclaimer: "Curabitur blandit tempus porttitor. Maecenas sed diam eget risus varius blandit sit amet non magna."
      post_content:
        [
          {
            type: 'paragraph'
            content: 'Aras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor.'
          },
          {
            type: 'image'
            src: 'https://cdn1.vox-cdn.com/thumbor/8-9OT7KQ4TFISeCgf2Kb28yvV78=/2200x0/filters:no_upscale()/cdn0.vox-cdn.com/uploads/chorus_asset/file/4186603/life-is-strange-episode-5-screenshot-05_1280.0.jpg'
            classes: 'side-img-right'
          },
          {
            type: 'paragraph'
            content: 'Aras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor.'
          },
          {
            type: 'quote'
            content: 'Etiam porta sem malesuada magna mollis euismod. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor.'
            classes: 'quote-left'
          },
          {
            type: 'paragraph'
            content: 'Aras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor.'
          },
          {
            type: 'paragraph'
            content: 'Aras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor.'
          },
          {
            type: 'image'
            src: 'https://cdn1.vox-cdn.com/thumbor/8-9OT7KQ4TFISeCgf2Kb28yvV78=/2200x0/filters:no_upscale()/cdn0.vox-cdn.com/uploads/chorus_asset/file/4186603/life-is-strange-episode-5-screenshot-05_1280.0.jpg'
            classes: 'full-width-img'
          },
          {
            type: 'heading'
            content: 'Donec ullamcorper nulla non metus auctor fringilla.'
          },
          {
            type: 'paragraph'
            content: 'Aras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor.'
          },
          {
            type: 'quote'
            content: 'Etiam porta sem malesuada magna mollis euismod. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor.'
            classes: 'quote-right'
          },
          {
            type: 'paragraph'
            content: 'Aras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor.'
          },
          {
            type: 'paragraph'
            content: 'Aras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor.'
          },
          {
            type: 'video'
            youtube_ID: 'hPCotoawhk0'
          },
          {
            type: 'heading'
            content: 'Donec ullamcorper nulla non metus auctor fringilla.'
          },
          {
            type: 'paragraph'
            content: 'Aras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor.'
          },
          {
            type: 'paragraph'
            content: 'Aras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor.'
          },
          {
            type: 'audio'
            soundcloud_track_ID: '135246738'
            classes: 'full-width-audio'
          },
          {
            type: 'image_quote'
            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
            img_src: 'https://images.unsplash.com/photo-1444090542259-0af8fa96557e?q=80&fm=jpg&s=f2746cebb0dc65b1c9ef28107ddc116e'
            height: '500px'
          }
        ]

Router.route '/posts/new', ->
  newPost = App.collections.Posts.create()
  @redirect "/#{newPost.slug}"

Router.route 'showPost',
  name: 'post.show'
  path: '/:post_slug'
  template: 'Post'
  subscriptions: ->
    @subscribe 'Posts', @params.post_slug
  data: ->
    return App.collections.Posts.findOne( slug: @params.post_slug )
