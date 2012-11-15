puts ->() {

  error = ->(n) { throw "SHOULD NEVER BE CALLED" }

  fx =
    ->(improver) {
      improver.(improver.(error))
    }.(
      ->(partial) {
        ->(n) { n.zero? ? 1 : n * partial.(n - 1) }
      }
    )

  fx.(1)

}.()

# >> 1
