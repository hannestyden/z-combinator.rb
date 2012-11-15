puts ->() {

  error = ->(n) { throw "SHOULD NEVER BE CALLED" }

  fact_improver =
    ->(partial) {
      ->(n) { n.zero? ? 1 : n * partial.(n - 1) }
    }

  # Y combinator
  y =
    ->(f) {
      ->(x) { x.(x) }.(
        ->(x) { f.(->(v) { x.(x).(v) }) }
      )
    }

  # Y calculates the fixpoint of an improver function.
  fact = y.(fact_improver)

  # `fact` is the fixpoint of `fact_improver`.
  fact = fact_improver.(fact)

  fact.(5)

}.()

# >> 120
