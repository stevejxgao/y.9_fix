class Movie < ActiveRecord::Base
    def others_by_same_director()
      # Note the current instructions are ambiguous about whether the 
      # returned collection should contain the original movie as well.
      # Either way is fine until this is specified.
      Movie.where(:director => director) - [self]
    end
  end
  