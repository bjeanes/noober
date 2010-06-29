bundles = {
  'Ack.tmbundle'                  => "protocool/ack-tmbundle.git",
  'Blue Ridge.tmbundle'           => "drnic/blue-ridge-tmbundle.git",
  'Code-Beautifier.tmbundle'      => "mocoso/code-beautifier.tmbundle.git",
  'Copy as RTF.tmbundle'          => "drnic/copy-as-rtf-tmbundle.git",
  'Cucumber.tmbundle'             => 'bmabey/cucumber-tmbundle.git',
  'Fish.tmbundle'                 => "l15n/fish-tmbundle.git",
  'Git.tmbundle'                  => "timcharper/git-tmbundle.git",
  'GitHub.tmbundle'               => "drnic/github-tmbundle.git",
  'HTML.tmbundle'                 => "drnic/html-tmbundle.git",
  'Javascript JQuery.tmbundle'    => "drnic/javascript-jquery-tmbundle.git",
  'Javascript Prototype.tmbundle' => "kangax/prototype-tmbundle.git",
  'Javascript Tools.tmbundle'     => "subtleGradient/javascript-tools.tmbundle.git",
  'Javascript.tmbundle'           => "subtleGradient/javascript.tmbundle.git",
  'Make.tmbundle'                 => "mattfoster/make.tmbundle.git",
  'Mocha.tmbundle'                => "joshuabates/ruby-mocha.tmbundle.git",
  'Objective-C iPhone.tmbundle'   => "drnic/objective-c-iphone-tmbundle.git",
  'Pivotal Tracker.tmbundle'      => "drnic/pivotal-tracker-tmbundle.git",
  'RSpec.tmbundle'                => "dchelimsky/rspec-tmbundle.git",
  'Ruby Faker.tmbundle'           => "omghax/faker-tmbundle.git",
  'Ruby Haml.tmbundle'            => "douglasjarquin/ruby-haml-tmbundle.git",
  'Ruby Machinist.tmbundle'       => "drnic/ruby-machinist-tmbundle.git",
  'Ruby on Rails.tmbundle'        => "drnic/ruby-shoulda-tmbundle.git",
  'Ruby Shoulda.tmbundle'         => "drnic/ruby-on-rails-tmbundle",
  'Ruby.tmbundle'                 => "drnic/ruby-tmbundle",
  'RubyAMP.tmbundle'              => "timcharper/rubyamp.git",
  'RubyCocoa.tmbundle'            => "drnic/rubycocoa-tmbundle.git",
  'Sass.tmbundle'                 => "aussiegeek/ruby-sass-tmbundle.git"
}

dep "textmate bundles" do
  requires 'TextMate.app', 'ProjectPlus.tmplugin', *bundles.keys
end

bundles.each do |name, url|
  tmbundle(name) { source "git://github.com/#{url}" }
end
