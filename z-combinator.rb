puts ->() {

  fact = ->(n) { n.zero? ? 1 : n * fact.(n - 1) }
  fact.(5)

}.()

# >> 120
