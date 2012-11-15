puts ->() {

  # Applicative Order Y combinator
  # Z Combinator
  z =
    ->(f) {
      ->(x) { f.(->(*v) { x.(x).(*v) }) }.(
      ->(x) { f.(->(*v) { x.(x).(*v) }) } )
    }

  gcd_improver =
    ->(partial) {
      ->(n, m) { m.zero? ? n : partial.(m, n.remainder(m)) }
    }

  z.(gcd_improver).(259, 111)

}.()

# >> 37
