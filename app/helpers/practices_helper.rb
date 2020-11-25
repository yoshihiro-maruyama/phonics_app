module PracticesHelper

  def next_page(alphabet)
    alphabet.id + 1
  end

  def previous_page(alphabet)
    alphabet.id - 1
  end
end
