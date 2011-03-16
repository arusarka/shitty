module Kernel
  alias_method :poop, :puts
  alias_method :pee, :p
end

class IO
  alias_method :poop, :puts
end

module Enumerable
  alias_method :fuck, :inject
end
