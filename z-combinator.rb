puts ->() {

  ->(gen) {
    gen.(gen)
  }.(
    ->(gen) {
      ->() {
        ->(n) { n.zero? ? 1 : n * gen.(gen).(n - 1) }
      }.()
    }
  ).(5)

}.()

# >> 120
