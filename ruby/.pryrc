if defined?(BigDecimal)
  BigDecimal.class_eval do
    def inspect
      "BigDecimal(#{to_s})"
    end
  end
end
