dep 'rvm default 1.9.2' do
  requires 'benhoskings:1.9.2 rvm ruby'
  met? { "~/.rvm/rubies/default".p.readlink.basename == "ruby-1.9.2-p0" }
  meet { shell "rvm --default 1.9.2-p0" }
end

dep 'rvm setup with rubies' do
  requires [
    "rvm default 1.9.2",
    dep("macruby.rvm"),
    dep("1.8.7.rvm"),
    dep("jruby.rvm"),
    dep("ree.rvm"),
    dep("rbx.rvm")
  ]
end

meta :rvm do
  accepts_list_for :patch
  accepts_list_for :configure

  template {
    helper :patches do
      patch.empty? ? "" : "--patch #{patch * ","}"
    end

    helper :configures do
      configure.empty? ? "" : "-C #{configure.map { |c| "--#{c.gsub(/\s+/,'-')}" } * ","}"
    end

    helper :ruby_name do
      name.sub(/\.ruby$/,'')
    end

    met? {
      Dir["~/.rvm/rubies".p].any? { |ruby| ruby[ruby_name] }
    }

    meet {
      shell "rvm install #{ruby_name} #{configures} #{patches}"
    }
  }
end
