numArray = []
answerArray = []
reverseRange = (999..900)

(900..999).each do |num|
  (reverseRange.first).downto(reverseRange.last).each do |num2|
    numArray.push(num * num2)
  end
end

numArray = numArray.uniq

numArray.each do |index|
  if index.to_s == index.to_s.reverse
    answerArray.push(index)
  end
end

answerArray.sort!()
answerArray[-1]
