class Game

  def initialize(choice1, choice2)
    @choice1 = choice1
    @choice2 = choice2
  end

  def compare()
    if @choice1 == "rock"
      result = compare_rock_first()
    elsif @choice1 == "paper"
      result = compare_paper_first()
    elsif @choice1 == "scissors"
      result = compare_scissors_first()
    else
      result = "Unknown first choice."
    end
    return result
  end

  def compare_rock_first()
    if @choice2 == "rock"
      return "Draw"
    elsif @choice2 == "paper"
      return "Paper wins"
    elsif @choice2 == "scissors"
      return "Rock wins"
    else
      return "Unknown second choice."
    end
  end

  def compare_paper_first()
    if @choice2 == "rock"
      return "Paper wins"
    elsif @choice2 == "paper"
      return "Draw"
    elsif @choice2 == "scissors"
      return "Scissors wins"
    else
      return "Unknown second choice"
    end
  end

  def compare_scissors_first()
    if @choice2 == "rock"
      return "Rock wins"
    elsif @choice2 == "paper"
      return "Scissors wins"
    elsif @choice2 == "scissors"
      return "Draw"
    else
      return "Unknown second choice"
    end
  end

end
