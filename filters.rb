# export methods do main.rb


def find(id)
  @candidates.find { |candidate| candidate[:id] == id }
end

def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    return true
  else
    return false
  end
end

def qualified_candidates(candidates)
  candidates.select { |candidate| experienced?(candidate) && candidate[:github_points] > 99 && (candidate[:languages].include? "Python" or candidate[:languages].include? "Ruby") && candidate[:age] > 17 && @candidates[5][:date_applied] > 15.days.ago.to_date }
end

def ordered_by_qualifications(candidates)
  candidates.sort_by { |candidate| [candidate[:years_of_experience], candidate[:github_points]] }.reverse
end


