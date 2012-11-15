puts ->() {

  error = ->(n) { throw "SHOULD NEVER BE CALLED" }

  fact_improver = ->(partial) {
    ->(n) { n.zero? ? 1 : n * partial.(n - 1) }
  }

  fx =
    fact_improver.(
      fact_improver.(
        fact_improver.(
          fact_improver.(
            fact_improver.(
              fact_improver.(
                fact_improver.(
                  fact_improver.(
                    fact_improver.(
                      fact_improver.(
                        fact_improver.(
                          fact_improver.(
                            fact_improver.(
                              fact_improver.(
                                fact_improver.(
                                  error
    ) ) ) ) ) ) ) ) ) ) ) ) ) ) )

  fx.(14)

}.()

# >> 87178291200
