puts ->() {

  # Applicative Order Y combinator
  # Z Combinator
  z =
    ->(f) {
      ->(x) { f.(->(*v) { x.(x).(*v) }) }.(
      ->(x) { f.(->(*v) { x.(x).(*v) }) } )
    }

  bin_search_improver =
    ->(partial) {
      ->(haystack, needle, start, stop) do
        mid = start + (stop - start) / 2

        if (start > stop)
          -1
        elsif (haystack[mid] == needle)
          mid
        elsif (haystack[mid] > needle)
          partial.(haystack, needle, start, mid - 1);
        else
          partial.(haystack, needle, mid + 1, stop);
        end
      end
    }

    ->(haystack, needle) {
      z.(bin_search_improver).(haystack, needle, 0, haystack.size - 1)
    }.([ 1, 2, 4, 5 ], 1)
}.()

# >> 0
