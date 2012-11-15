puts ->() {

  error = ->(n) { throw "SHOULD NEVER BE CALLED" }

  ->(improver) {
    ->(gen) {
      gen.(gen)
    }.(
      ->(gen) {
        improver.(->(v) { gen.(gen).(v) })
      }
    )
  }.(
    ->(partial) {
      ->(n) { n.zero? ? 1 : n * partial.(n - 1) }
    }
  ).(5)

}.()

# >> 120
