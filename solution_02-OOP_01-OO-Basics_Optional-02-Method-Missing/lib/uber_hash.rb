class UberHash
  def initialize
    @hash = {}
  end

  def method_missing(meth, *args, &block)
    if meth.to_s =~ /^(.*)=$/
      @hash[Regexp.last_match[1].to_sym] = args[0]
    else
      @hash[meth]
    end
  end
end