bundles = {
  'Ack.tmbundle'                  => "protocool/ack-tmbundle",
  'Blue Ridge.tmbundle'           => "drnic/blue-ridge-tmbundle",
  'Code-Beautifier.tmbundle'      => "mocoso/code-beautifier.tmbundle",
  'Copy as RTF.tmbundle'          => "drnic/copy-as-rtf-tmbundle",
  'Cucumber.tmbundle'             => 'bmabey/cucumber-tmbundle.git',
  'Fish.tmbundle'                 => "l15n/fish-tmbundle",
  'Git.tmbundle'                  => "timcharper/git-tmbundle",
  'GitHub.tmbundle'               => "drnic/github-tmbundle",
  'HTML.tmbundle'                 => "drnic/html-tmbundle",
  'Javascript JQuery.tmbundle'    => "drnic/javascript-jquery-tmbundle",
  'Javascript Prototype.tmbundle' => "kangax/prototype-tmbundle",
  'Javascript Tools.tmbundle'     => "subtleGradient/javascript-tools.tmbundle",
  'Javascript.tmbundle'           => "subtleGradient/javascript.tmbundle",
  'Make.tmbundle'                 => "mattfoster/make.tmbundle",
  'Mocha.tmbundle'                => "joshuabates/ruby-mocha.tmbundle",
  'Objective-C iPhone.tmbundle'   => "drnic/objective-c-iphone-tmbundle",
  'Pivotal Tracker.tmbundle'      => "drnic/pivotal-tracker-tmbundle",
  'RSpec.tmbundle'                => "dchelimsky/rspec-tmbundle",
  'Ruby Faker.tmbundle'           => "omghax/faker-tmbundle",
  'Ruby Haml.tmbundle'            => "mattpolito/ruby-haml.tmbundle",
  'Ruby Machinist.tmbundle'       => "drnic/ruby-machinist-tmbundle",
  'Ruby on Rails.tmbundle'        => "drnic/ruby-shoulda-tmbundle",
  'Ruby Shoulda.tmbundle'         => "drnic/ruby-on-rails-tmbundle",
  'Ruby.tmbundle'                 => "drnic/ruby-tmbundle",
  'RubyAMP.tmbundle'              => "timcharper/rubyamp",
  'RubyCocoa.tmbundle'            => "drnic/rubycocoa-tmbundle",
  'Sass.tmbundle'                 => "charlesr/ruby-sass-tmbundle",
  'SCSS.tmbundle'                 => "kuroir/SCSS.tmbundle"
}

dep "textmate bundles" do
  requires 'TextMate.app', *bundles.keys
end

bundles.each do |name, url|
  tmbundle(name) { source "git://github.com/#{url}.git" }
end
