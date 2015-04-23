class String
  define_method(:allergies) do
    allergy_value = self.to_i()
    allergen_result = ""
    allergy_hash = { "cats" => 128, "pollen" => 64, "chocolate" => 32, "tomatoes" => 16, "strawberries" => 8, "shellfish" => 4, "peanuts" => 2, "eggs" => 1 }
    allergy_hash.each do |allergen, score|
      if allergy_value >= score
        allergen_result.concat(allergen).concat(", ")
        allergy_value = allergy_value - score
      end
    end
    allergen_result = allergen_result[0..-3]
    return allergen_result
  end
end


#
# hashtable {cats, 128 - pollen, 64 - choco, 32}
# if inpval > 128 [value]
#   push cats[key] to outsring
#   inpal = inpval - 128
# if inpval > 64
#   push pollen to outring
#   inpal = inpval - 64
#
