Warbler::Config.new do |config|
 #compiled: compile .rb files to .class files
 config.features = %w(executable)
 #config.dirs = %w(app config db lib log script vendor tmp)
 config.dirs = %w(app config bin public lib vendor)
 #config.dirs = ['config', 'bin', 'public', 'app', 'vendor']
 # Additional files/directories to include, above those in config.dirs
 config.includes = FileList['config.ru']

 # An array of Bundler groups to avoid including in the war file.
 # Defaults to ["development", "test", "assets"].
 # config.bundle_without = []

 # Uncomment this if you don't want to package rails gem.
 # config.gems -= ["rails"]

 # Pathmaps for controlling how application files are copied into the archive
 # config.pathmaps.application = ["WEB-INF/%p"]

 config.jar_name = "railsage"
 config.jar_extension = "jar"

 # Destionation for the created archive. Defaults to project's root directory.
 # config.autodeploy_dir = "dist/"

 # When using the 'compiled' feature and specified, only these Ruby
 # files will be compiled. Default is to compile all \.rb files in
 # the application.
 # config.compiled_ruby_files = FileList['app/**/*.rb']

 # Determines if ruby files in supporting gems will be compiled.
 # Ignored unless compile feature is used.
 # config.compile_gems = false

 # When set it specify the bytecode version for compiled class files
 # config.bytecode_version = "1.6"

 # When set to true, Warbler will override the value of ENV['GEM_HOME'] even it
 # has already been set. When set to false it will use any existing value of
 # GEM_HOME if it is set.
 # config.override_gem_home = true

 # Allows for specifing custom executables
 # config.executable = ["rake", "bin/rake"]

 # Sets default (prefixed) parameters for the executables
 # config.executable_params = "do:something"

 # Embedded webserver to use with the 'executable' feature. Currently supported
 # webservers are:
 # - *jetty* - Embedded Jetty from Eclipse
 # config.webserver = 'jetty'

 # Files for WEB-INF directory (next to web.xml). This contains
 # web.xml by default. If there is an .erb-File it will be processed
 # with webxml-config. You may want to exclude this file via
 # config.excludes.
 # config.webinf_files += FileList["jboss-web.xml"]

 # Files to be included in the root of the webapp.  Note that files in public
 # will have the leading 'public/' part of the path stripped during staging.
 # config.public_html = FileList["public/**/*", "doc/**/*"]

 # Pathmaps for controlling how public HTML files are copied into the .war
 # config.pathmaps.public_html = ["%{public/,}p"]

 # Value of RAILS_ENV for the webapp -- default as shown below
 config.webxml.rails.env = ENV['RAILS_ENV'] || 'development'

 # Public ROOT mapping, by default assets are copied into .war ROOT directory.
 # config.public.root = ''

 # Application booter to use, either :rack or :rails (autodetected by default)
 # config.webxml.booter = :rails

 # When using the :rack booter, "Rackup" script to use.
 # - For 'rackup.path', the value points to the location of the rackup
 # script in the web archive file. You need to make sure this file
 # gets included in the war, possibly by adding it to config.includes
 # or config.webinf_files above.
 # - For 'rackup', the rackup script you provide as an inline string
 #   is simply embedded in web.xml.
 # The script is evaluated in a Rack::Builder to load the application.
 # Examples:
 # config.webxml.rackup.path = 'WEB-INF/hello.ru'
 # config.webxml.rackup = %{require './lib/demo'; run Rack::Adapter::Camping.new(Demo)}
 #config.webxml.rackup = require 'cgi' && CGI::escapeHTML(File.read("config.ru"))

 # Control the pool of Rails runtimes. Leaving unspecified means
 # the pool will grow as needed to service requests. It is recommended
 # that you fix these values when running a production server!
 # If you're using threadsafe! mode, you probably don't want to set these values,
 # since 1 runtime(default for threadsafe mode) will be enough.
 # config.webxml.jruby.min.runtimes = 2
 # config.webxml.jruby.max.runtimes = 4
end
