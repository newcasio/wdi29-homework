# Allergies Warmup
# An allergy test produces a single numeric score which contains the information about all the allergies the person has (that they were tested for).
#
# The list of items (and their value) that were tested are:
#
# eggs (1)
# peanuts (2)
# shellfish (4)
# strawberries (8)
# tomatoes (16)
# chocolate (32)
# pollen (64)
# cats (128)
# So if Tom is allergic to peanuts and chocolate, he gets a score of 34.
#
# Now, given just that score of 34, your program should be able to say:
#
# Whether Tom is allergic to any one of those allergens listed above.
# All the allergens Tom is allergic to.

class Allergies

  def allergy_scores
    scores = {
      1 => "eggs",
      2 => "peanuts",
      4 => "shellfish",
      8 => "strawberries",
      16 => "tomatoes",
      32 => "chocolate",
      64 => "pollen",
      128 => "cats"
    }
  end

  def get_keys
    allergy_scores.keys.reverse
  end

  def analyse score
    keys = get_keys
    allergies = []
    keys.each do |key|
      puts `#{key}, #{allergy_scores[key]}`
    end
  end

end

test = Allergies.new
puts test.analyse 254
