puts ->() {

  error = ->(n) { throw "SHOULD NEVER BE CALLED" }

  fact_improver = ->(partial) {
    ->(n) { n.zero? ? 1 : n * partial.(n - 1) }
  }

  f0 = fact_improver.(error)
  f0.(0)

}.()

# >> 1
