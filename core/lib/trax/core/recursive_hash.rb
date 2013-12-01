class RecursiveHash < Hash
  def []= (*keys, value)
    self.merge! keys.reverse.inject(value){|mem,obj| {obj => mem } }
    self
  end
end