dep 'brews' do
  requires %w(
    bash mysql postgresql gist readline wget tree graphviz hub imagemagick sphinx v8
  ).map { |brew| dep("#{brew}.managed") }
end
