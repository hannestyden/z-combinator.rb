puts ->() {

  error = ->(n) { throw "SHOULD NEVER BE CALLED" }

  fact_improver =
    ->(partial) {
      ->(n) { n.zero? ? 1 : n * partial.(n - 1) }
    }

  y =
    ->(improver) {
      ->(gen) { gen.(gen) }.(
        ->(gen) { improver.(->(v) { gen.(gen).(v) }) }
      )
    }

  fact = y.(fact_improver)
  fact.(5)

}.()

# >> 120
