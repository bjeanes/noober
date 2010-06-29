meta :plist, :for => :osx do
  accepts_list_for :domain
  
  template do
    helper(:application)    { name.gsub(/\.plist$/,'') }
    helper(:default_domain) { "-app #{application.gsub(/\.app$/,'')}" }
    helper(:domain_to_use)  { domain.empty? ? default_domain : domain[0].name }
    helper(:settings)       { var("plist_#{name}_settings") }
    helper(:type_for_value) { |value|
      type = case value
      when Float then 'float'
      when Integer then 'int'
      when Hash then 'dict'
      when Array then 'array'
      when FalseClass, TrueClass then 'bool'
      when Date, Time then 'date'
      when String, Symbol then 'string'
      else 'data'
      end
    }
    
    def setting(key,value)
      merge "plist_#{name}_settings", {key.to_s => value}
    end
    
    setup { requires application }
    
    met? {
      settings.all? {|key, value|
        shell(["defaults", "read", domain_to_use, key]) == value
      }
    }
    
    meet {
      # TODO only run the unset settings
      settings.each {|key, value|
        type = type_for_value(value)
        raise "#{type} not yet implemented" unless %w(float int bool string).include?(type)
        shell(["defaults", "write", domain_to_use, key, "-#{type}", value.inspect])
      }
    }
  end
end