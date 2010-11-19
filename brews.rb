dep 'brews' do
  brews = %w[
    mongodb redis mysql postgresql sphinx
    tree graphviz hub imagemagick wget v8
    gist readline bash zsh fish ack ffmpeg
    ec2-api-tools ec2-ami-tools growlnotify
    git git-flow lame node npm webkit2png
    bash-completion wireshark wkhtmltopdf
    nmap nginx postgis redcar tmux
  ].map { |brew| dep("#{brew}.managed") }

  requires ["homebrew", "iphone tools"] + brews
end

dep 'mongodb.managed' do
  provides %w[
    mongo mongod mongodump mongoexport
    mongofiles mongoimport mongorestore
    mongos mongosniff mongostat
  ]
end

dep 'redis.managed' do
  provides %w[redis-benchmark redis-check-aof redis-check-dump redis-cli redis-server]
end

dep 'postgresql.managed' do
  provides %w[
    psql
    createdb createuser createlang
    dropdb   dropuser   droplang
  ]
end

dep 'sphinx.managed' do
  provides %w[
    spelldump
    searchd search
    indextool indexer
  ]
end

dep('graphviz.managed') { provides [] }
dep('readline.managed') { provides [] }

dep 'imagemagick.managed' do
  provides %w[
    Magick-config MagickCore-config MagickWand-config
    Wand-config animate compare composite conjure convert
    display identify import mogrify montage stream
  ]
end
