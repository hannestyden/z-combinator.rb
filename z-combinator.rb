puts ->() {

  ->() {
    ->(gen) {
      gen.(gen)
    }.(
      ->(gen) {
        ->(partial) {
          ->(n) { n.zero? ? 1 : n * partial.(n - 1) }
        }.(->(v) { gen.(gen).(v) })
      }
    )
  }.().(5)

}.()

# >> 120
