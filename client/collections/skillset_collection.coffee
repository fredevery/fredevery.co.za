App.collections.Skillset = new Mongo.Collection null
App.collections.SkillsetDescriptions = new Mongo.Collection null

SKILLSET = [

  # Languages
  {
    type: 'language'
    name: 'JavaScript'
    start_date: "2006-02-01"
    proficiency: 95
    logo: 'javascript.png'
  },
  {
    type: 'language'
    name: 'CSS 2/3'
    start_date: "2006-02-01"
    proficiency: 95
    logo: 'css.png'
  },
  {
    type: 'language'
    name: 'HTML 4/5'
    start_date: "2006-02-01"
    proficiency: 95
    logo: 'html.png'
  },
  {
    type: 'language'
    name: 'CoffeeScript'
    start_date: "2012-12-01"
    proficiency: 95
    logo: 'coffeescript.png'
  },
  {
    type: 'language'
    name: 'SASS/SCSS'
    start_date: "2010-10-01"
    proficiency: 95
    logo: 'sass.png'
  },
  {
    type: 'language'
    name: 'Ruby'
    start_date: "2010-10-01"
    proficiency: 70
    logo: 'ruby.png'
  },
  {
    type: 'language'
    name: 'PHP'
    start_date: "2008-01-01"
    proficiency: 60
    logo: 'php.png'
  },
  {
    type: 'language'
    name: 'Bash'
    start_date: "2008-01-01"
    proficiency: 70
    logo: 'bash.png'
  },
  {
    type: 'language'
    name: 'SQL'
    start_date: "2006-02-01"
    proficiency: 50
    logo: 'sql.png'
  },

  # Paradigms
  {
    type: 'paradigm'
    name: 'Design Patterns'
    start_date: "2010-10-01"
    proficiency: 80
    logo: 'patterns.png'
  },
  {
    type: 'paradigm'
    name: 'Responsive Web Layouts'
    start_date: "2010-10-01"
    proficiency: 90
    logo: 'responsive.png'
  },
  {
    type: 'paradigm'
    name: 'Responsive HTML Email'
    start_date: "2014-11-01"
    proficiency: 80
    logo: 'responsive_email.png'
  },
  {
    type: 'paradigm'
    name: 'Agile Development'
    start_date: "2008-10-01"
    proficiency: 90
    logo: 'agile.png'
  },
  {
    type: 'paradigm'
    name: 'Application Architecture'
    start_date: "2011-06-01"
    proficiency: 80
    logo: 'app_arch.png'
  },
  {
    type: 'paradigm'
    name: 'Rapid Prototyping'
    start_date: "2010-10-01"
    proficiency: 90
    logo: 'prototyping.png'
  },
  {
    type: 'paradigm'
    name: 'MVC / MVP / MVVM'
    start_date: "2011-10-01"
    proficiency: 90
    logo: 'mvc.png'
  },
  {
    type: 'paradigm'
    name: 'AJAX'
    start_date: "2008-02-01"
    proficiency: 90
    logo: 'ajax.png'
  },
  {
    type: 'paradigm'
    name: 'REST'
    start_date: "2010-10-01"
    proficiency: 95
    logo: 'rest.png'
  },
  {
    type: 'paradigm'
    name: 'Object Oriented Programming'
    start_date: "2010-10-01"
    proficiency: 95
    logo: 'oop.png'
  },
  {
    type: 'paradigm'
    name: 'Test Driven Development'
    start_date: "2010-10-01"
    proficiency: 50
    logo: 'tdd.png'
  },
  {
    type: 'paradigm'
    name: 'Behaviour Driven Development'
    start_date: "2012-01-01"
    proficiency: 50
    logo: 'bdd.png'
  },
  {
    type: 'paradigm'
    name: 'Event Driven Programming'
    start_date: "2008-10-01"
    proficiency: 95
    logo: 'events.png'
  },
  {
    type: 'paradigm'
    name: 'Continuous Integration'
    start_date: "2010-10-01"
    proficiency: 95
    logo: 'ci.png'
  },
  {
    type: 'paradigm'
    name: 'Graceful Degradation'
    start_date: "2010-06-01"
    proficiency: 95
    logo: 'degrade.png'
  },
  {
    type: 'paradigm'
    name: 'Progressive Enhancement'
    start_date: "2010-06-01"
    proficiency: 95
    logo: 'enhance.png'
  },
  {
    type: 'paradigm'
    name: 'SEO'
    start_date: "2007-01-01"
    proficiency: 75
    logo: 'search.png'
  },
  {
    type: 'paradigm'
    name: 'Templating'
    start_date: "2007-01-01"
    proficiency: 95
    logo: 'template.png'
  },
  {
    type: 'paradigm'
    name: 'Load Balancing'
    start_date: "2014-01-01"
    proficiency: 65
    logo: 'load.png'
  },
  {
    type: 'paradigm'
    name: 'CDN'
    start_date: "2007-01-01"
    proficiency: 95
    logo: 'cdn.png'
  },

  # Frameworks
  {
    type: 'framework'
    name: 'Meteor'
    start_date: "2014-02-01"
    proficiency: 95
    logo: 'meteor.png'
  },
  {
    type: 'framework'
    name: 'Backbone.js'
    start_date: "2012-02-01"
    proficiency: 95
    logo: 'backbone.png'
  },
  {
    type: 'framework'
    name: 'Marionette.js'
    start_date: "2012-02-01"
    proficiency: 90
    logo: 'marionette.png'
  },
  {
    type: 'framework'
    name: 'Famous'
    start_date: "2014-02-01"
    proficiency: 65
    logo: 'famous.png'
  },
  {
    type: 'framework'
    name: 'Ruby on Rails'
    start_date: "2010-10-01"
    proficiency: 75
    logo: 'rails.png'
  },
  {
    type: 'framework'
    name: 'PhoneGap'
    start_date: "2011-06-01"
    proficiency: 85
    logo: 'phonegap.png'
  },
  {
    type: 'framework'
    name: 'Compass'
    start_date: "2010-10-01"
    proficiency: 95
    logo: 'compass.png'
  },
  {
    type: 'framework'
    name: 'Bootstrap'
    start_date: "2013-06-01"
    proficiency: 85
    logo: 'bootstrap.png'
  },
  {
    type: 'framework'
    name: 'Wordpress'
    start_date: "2012-06-01"
    proficiency: 90
    logo: 'wordpress.png'
  },
  {
    type: 'framework'
    name: 'Node.js'
    start_date: "2013-01-01"
    proficiency: 60
    logo: 'node.png'
  },
  {
    type: 'framework'
    name: 'Jasmine'
    start_date: "2011-06-01"
    proficiency: 60
    logo: 'jasmine.png'
  }

  # Libraries / APIs
  {
    type: 'library_api'
    name: 'jQuery.js'
    start_date: "2006-10-01"
    proficiency: 95
    logo: 'jquery.png'
  },
  {
    type: 'library_api'
    name: 'Stamp{it}'
    start_date: "2015-11-18"
    proficiency: 70
    logo: 'stampit.png'
  },
  {
    type: 'library_api'
    name: 'Underscore.js'
    start_date: "2012-02-01"
    proficiency: 90
    logo: 'underscore.png'
  },
  {
    type: 'library_api'
    name: 'Paper.js'
    start_date: "2015-06-01"
    proficiency: 70
    logo: 'paperjs.png'
  },
  {
    type: 'library_api'
    name: 'Kinetic.js'
    start_date: "2013-05-01"
    proficiency: 80
    logo: 'kineticjs.png'
  },
  {
    type: 'library_api'
    name: 'MooTools'
    start_date: "2009-06-01"
    proficiency: 80
    logo: 'mootools.png'
  },
  {
    type: 'library_api'
    name: 'Modernizr'
    start_date: "2011-06-01"
    proficiency: 95
    logo: 'modernizr.png'
  },
  {
    type: 'library_api'
    name: 'Handlebars'
    start_date: "2011-06-01"
    proficiency: 95
    logo: 'handlebars.png'
  },
  {
    type: 'library_api'
    name: 'Moment.js'
    start_date: "2014-02-01"
    proficiency: 95
    logo: 'moment.png'
  },
  {
    type: 'library_api'
    name: 'Google Analytics'
    start_date: "2007-06-01"
    proficiency: 75
    logo: 'g_analytics.png'
  },
  {
    type: 'library_api'
    name: 'Google Maps'
    start_date: "2006-10-01"
    proficiency: 85
    logo: 'g_maps.png'
  },
  {
    type: 'library_api'
    name: 'ImageMagick'
    start_date: "2008-01-01"
    proficiency: 70
    logo: 'imagemagick.png'
  },
  {
    type: 'library_api'
    name: 'Phantom.js'
    start_date: "2010-06-01"
    proficiency: 50
    logo: 'phantomjs.png'
  },
  {
    type: 'library_api'
    name: 'Isotope'
    start_date: "2015-11-19"
    proficiency: 70
    logo: 'isotope.png'
  },

  # Storage
  {
    type: 'storage'
    name: 'MongoDB'
    start_date: "2014-01-01"
    proficiency: 75
    logo: 'mongodb.png'
  },
  {
    type: 'storage'
    name: 'MySQL'
    start_date: "2009-06-01"
    proficiency: 50
    logo: 'mysql.png'
  },

  # Platfroms
  {
    type: 'platform'
    name: 'OS X'
    start_date: "2011-06-01"
    proficiency: 95
    logo: 'osx.png'
  },
  {
    type: 'platform'
    name: 'Ubuntu'
    start_date: "2008-06-01"
    proficiency: 95
    logo: 'ubuntu.png'
  },
  {
    type: 'platform'
    name: 'Windows'
    start_date: "2006-01-01"
    proficiency: 95
    logo: 'windows.png'
  },
  {
    type: 'platform'
    name: 'Android'
    start_date: "2011-06-01"
    proficiency: 80
    logo: 'android.png'
  },
  {
    type: 'platform'
    name: 'iOS'
    start_date: "2011-06-01"
    proficiency: 80
    logo: 'ios.png'
  },

  # HTTP Servers
  {
    type: 'http_server'
    name: 'Apache2'
    start_date: "2009-06-01"
    proficiency: 80
    logo: 'apache2.png'
  },
  {
    type: 'http_server'
    name: 'Nginx'
    start_date: "2014-01-01"
    proficiency: 80
    logo: 'nginx.png'
  },


  # Providers
  {
    type: 'provider'
    name: 'AWS'
    start_date: "2014-01-01"
    proficiency: 70
    logo: 'aws.png'
  },
  {
    type: 'provider'
    name: 'Rackspace'
    start_date: "2010-06-01"
    proficiency: 70
    logo: 'rackspace.png'
  },
  {
    type: 'provider'
    name: 'Digital Ocean'
    start_date: "2015-06-01"
    proficiency: 80
    logo: 'digital_ocean.png'
  },
  {
    type: 'provider'
    name: 'Cloudflare'
    start_date: "2011-01-01"
    proficiency: 90
    logo: 'cloudflare.png'
  },

  # Tools
  {
    type: 'tool'
    name: 'Atom IDE'
    start_date: "2015-01-01"
    proficiency: 95
    logo: 'atom.png'
  },
  {
    type: 'tool'
    name: 'XCode'
    start_date: "2011-06-01"
    proficiency: 75
    logo: 'xcode.png'
  },
  {
    type: 'tool'
    name: 'Git'
    start_date: "2010-01-01"
    proficiency: 90
    logo: 'git.png'
  },
  {
    type: 'tool'
    name: 'SVN'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Vagrant'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'NPM'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Adobe Illustrator'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Adobe Photoshop'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Capistrano'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Middleman'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Gulp'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Grunt'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Bower'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Email on Acid'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Codeship'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Kadira'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Sublime Text'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Vim'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Docker'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Terminal'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Selenium'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'Linters (JS/CSS/HTML/etc.)'
    start_date: "2010-01-01"
    proficiency: 90
    logo: ''
  },
  {
    type: 'tool'
    name: 'icomoon'
    start_date: ''
    proficiency: 95
    logo: ''
  },
  {
    type: 'tool'
    name: 'Gulp'
    start_date: "2011-06-01"
    proficiency: 60
    logo: ''
  },
  {
    type: 'tool'
    name: 'Browserify'
    start_date: "2011-06-01"
    proficiency: 60
    logo: ''
  },
  {
    type: 'tool'
    name: 'Babel'
    start_date: "2015-11-19"
    proficiency: 10
    logo: ''
  },
  {
    type: 'tool'
    name: 'Virtual Box'
    start_date: "2015-11-19"
    proficiency: 10
    logo: ''
  }
]

SKILLSET_DESCRIPTIONS = [
  {
    category: 'languages'
    title: 'Languages'
    description: "
      Frontend/clientside languages FTW! <br />
      <i>(Totally capable of hacking together a working backend system though)</i>
    "
  },
  {
    category: 'paradigms'
    title: 'Paradigms'
    description: "
      Being self-taught is no reason not to fill one's head full of things you
      couldn't talk to your spouse about. <br />
      <i>(Assuming your spouse's head isn't filled with the same stuff)</i>
    "
  },
  {
    category: 'frameworks'
    title: 'Frameworks'
    description: "
      Each framework has its stengths, weaknesses, and opinions. By exposing
      myself to as many as I can, I grow as a programmer. <br />
      <i>(Sanity levels may vary)</i>
    "
  },
  {
    category: 'libraries_apis'
    title: 'Libraries / APIs'
    description: "
      This list is by no means exhaustive, and I am sure there are many Libraries
      and APIs that I've used but forgotten about. <br />
      <i>(Watch this space ;))</i>
    "
  },
  {
    category: 'storage'
    title: 'Storage'
    description: "
      Currently the weakest of my skills. That's not to say I can't CRUD the
      bejeezes out of a DB. I am just not well versed in the most perfomant ways
      of CRUDing the bejeezes out of a DB.
    "
  },
  {
    category: 'http_servers'
    title: 'HTTP Servers'
    description: "
      Need a server setup? You got it! Need a load balanced cluster? You got it!
      SSL certificate installation? You got that too! Need to reinforce the
      security of your servers against them hardcore hackers?...hmm, just give me
      some time...
    "
  },
  {
    category: 'platforms'
    title: 'Platforms'
    description: "
      Yip...I can turn almost anything into a development environment.
    "
  },
  {
    category: 'providers'
    title: 'Providers'
    description: "
      I can totally type my email address and password in correctly and log into
      some pretty 'interesting' dashboards.
    "
  }
]

for skill in SKILLSET
  App.collections.Skillset.insert skill

for skillsetDescription in SKILLSET_DESCRIPTIONS
  App.collections.SkillsetDescriptions.insert skillsetDescription
