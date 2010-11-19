dep 'brews' do
  brews = %w(
    mongodb redis mysql postgresql sphinx
    tree graphviz hub imagemagick wget v8
    gist readline bash zsh fish ack ffmpeg
    ec2-api-tools ec2-ami-tools growlnotify
    git git-flow lame node npm webkit2png
    bash-completion wireshark wkhtmltopdf
    nmap nginx postgis redcar tmux
  ).map { |brew| dep("#{brew}.managed") }

  requires ["iphone tools"] + brews
end
