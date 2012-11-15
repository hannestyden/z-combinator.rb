puts ->() {

  # Applicative Order Y combinator
  # Z Combinator
  z =
    ->(f) {
      ->(x) { f.(->(v) { x.(x).(v) }) }.(
      ->(x) { f.(->(v) { x.(x).(v) }) } )
    }

  fib_improver =
    ->(partial) {
      ->(n) { n <= 2 ? n : partial.(n - 1) + partial.(n - 2) }
    }

  z.(fib_improver).(5)

}.()

# >> 8
