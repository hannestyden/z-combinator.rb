puts ->() {

  error = ->(n) { throw "SHOULD NEVER BE CALLED" }

  fact_improver = ->(partial) {
    ->(n) { n.zero? ? 1 : n * partial.(n - 1) }
  }

  f0 = fact_improver.(error)
  f1 = fact_improver.(f0)
  f2 = fact_improver.(f1)
  f2.(2)

}.()

# >> 2
