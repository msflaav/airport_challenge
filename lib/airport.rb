class Airport
  attr_reader :airport_planes
  attr_writer :airport_planes

def initialize
  @airport_planes = []
end

  def land (plane)
  @airport_planes << plane
  end


def take_off (plane)
    @airport_planes.pop
end

def generate
    if [1,2].sample == 1
   "sunny"
    else  "stormy"
   end
end

end
