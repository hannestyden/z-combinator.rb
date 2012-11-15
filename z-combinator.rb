puts ->() {

  error = ->(n) { throw "SHOULD NEVER BE CALLED" }

  ->(code) {
    ->(gen) {
      gen.(gen)
    }.(
      ->(gen) {
        ->(partial) {
          ->(n) { n.zero? ? 1 : n * partial.(n - 1) }
        }.(->(v) { gen.(gen).(v) })
      }
    )
  }.(error).(5)

}.()

# >> 120
