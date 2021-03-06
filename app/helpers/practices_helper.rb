module PracticesHelper
  def next_page(alphabet)
    alphabet.id + 1
  end

  def previous_page(alphabet)
    alphabet.id - 1
  end

  def first_page?(alphabet)
    alphabet.id == 1
  end

  def last_page?(alphabet, alphabet_count)
    alphabet.id == alphabet_count
  end
end
