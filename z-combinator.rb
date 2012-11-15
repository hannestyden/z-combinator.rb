puts ->() {

  # Applicative Order Y combinator
  # Z Combinator
  z =
    ->(f) {
      ->(x) { f.(->(v) { x.(x).(v) }) }.(
      ->(x) { f.(->(v) { x.(x).(v) }) } )
    }

  fact_improver =
    ->(partial) {
      ->(n) { n.zero? ? 1 : n * partial.(n - 1) }
    }

  z.(fact_improver).(5)

}.()

# >> 120
