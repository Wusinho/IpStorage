class IpStorage

  def initialize
    @ipStorage= Hash.new(0)
  end

  def request_handled(ip_address)
    @ipStorage[ip_address] +=1
    
  end

  def top100
    list = @ipStorage.sort_by(&:last).reverse.first(100)

    list.each do |ele|
      puts ele.first
    end

  end

  def clear
    @ipStorage = {}
  end
end
