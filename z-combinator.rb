puts ->() {

  error = ->(n) { throw "SHOULD NEVER BE CALLED" }

  ->(gen) {
    gen.(gen)
  }.(
    ->(gen) {
      ->(code) {
        ->(n) { n.zero? ? 1 : n * gen.(gen).(n - 1) }
      }.(error)
    }
  ).(5)

}.()

# >> 120
