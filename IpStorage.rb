class IpStorage

  def initialize
    @ip_storage= Hash.new(0)
  end

  def request_handled(ip_address)
    @ip_storage[ip_address] = 0 if !@ip_storage[ip_address]
    @ip_storage[ip_address] += 1
    @ip_storage = @ip_storage.sort_by{ |k, v| v }.reverse.to_h
  end

  def top100
    list = @ip_storage.first(100)

    list.each do |ele|
      puts ele.first
    end
  end

  def clear
    @ip_storage = {}
  end
end
