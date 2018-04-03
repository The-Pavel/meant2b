Encoding.default_internal = Encoding::UTF_8
require 'csv'

  # fetching ab5c questions from csv and creating an array of hashes, with one hash being the question and the traits it affects
  questions = []
  CSV.foreach('b5c1.csv', headers: :first_row) do |row|
    break if row[0] == nil
    question = {}
    question[:question] = row[0]
    question[:traits] = [row[3], row[4]]
    questions << question
  end

  # fetching all possible trait combinations of ab5c questions and creating an array of hashes, where one hash is are the traits in a combination and the primary trait coefficient and secondary trait coefficient
  figures = []
  CSV.foreach('values_and_coeff.csv') do |row|
    break if row[0] == nil
    values = {}
    values[:traits] = [row[1], row[2]]
    values[:coeff] = [row[3].to_f, row[4].to_f]
    figures << values
  end

  # setting initial values of the big 5 personality factors to 0
  i_surgency_extraversion = 0
  ii_agreeableness = 0
  iii_conscientiousness = 0
  iv_emotional_stability = 0
  v_intellect_imagination = 0


  # creating a sample of x questions to iterate over
  questions.sample(10).each do |question|

    # printing the question for the user to see
    puts question[:question]

    # finding the trait combination in figures that matches the trait combination of the randomized question
    matching_figure = figures.select{|pair| pair[:traits] == question[:traits] }

    # puts matching_figure
     # puts question[:traits]

     # setting primary and secondary traits (roman numerals), signs (+ if increases score and - if decreases score, and the coefficient
     primary = question[:traits][0][/([A-Z])+/]
     secondary = question[:traits][1][/([A-Z])+/]
     sign_primary = question[:traits][0][/\W/]
     sign_secondary = question[:traits][1][/\W/]
     number_primary = matching_figure[0][:coeff][1]
     number_secondary = matching_figure[0][:coeff][0]
     # puts number_primary
     # puts number_secondary

     # prompting user if the question describes him/her or not
     puts "Does this describe you (y) or not (n)?"
     input = gets.chomp

     # if the question doesn't describe the user, inverting the coefficients
     if input == "n"
      number_primary = -(number_primary)
      number_secondary = -(number_secondary)
     end

     # puts number_primary
     # puts number_secondary


      # creating cases for roman numbers in primary and secondary trait to correspond to trait scores
      case primary
      when "V"
      # checking if corresponding trait score is affected positively or negatively by the question
        sign_primary == "+" ? v_intellect_imagination += number_primary : v_intellect_imagination -= number_primary
      when "IV"
        sign_primary == "+" ? iv_emotional_stability += number_primary : iv_emotional_stability -= number_primary
      when "III"
        sign_primary == "+" ? iii_conscientiousness += number_primary : iii_conscientiousness -= number_primary
      when "II"
        sign_primary == "+" ? ii_agreeableness += number_primary : ii_agreeableness -= number_primary
      when "I"
        sign_primary == "+" ? i_surgency_extraversion += number_primary : i_surgency_extraversion -= number_primary
      end

      case secondary
      when "V"
        sign_secondary == "+" ? v_intellect_imagination += number_secondary : v_intellect_imagination -= number_secondary
      when "IV"
        sign_secondary == "+" ? iv_emotional_stability += number_secondary : iv_emotional_stability -= number_secondary
      when "III"
        sign_secondary == "+" ? iii_conscientiousness += number_secondary : iii_conscientiousness -= number_secondary
      when "II"
        sign_secondary == "+" ? ii_agreeableness += number_secondary : ii_agreeableness -= number_secondary
      when "I"
        sign_secondary == "+" ? i_surgency_extraversion += number_secondary : i_surgency_extraversion -= number_secondary
      end
    # puts i_surgency_extraversion
    # puts ii_agreeableness
    # puts iii_conscientiousness
    # puts iv_emotional_stability
    # puts v_intellect_imagination
  end

  # printing out the score of each trait

  # first score above 0 signals E(extrover) in MB16T, below 0 - I(introvert)
  puts "Your Extraversion Score - #{i_surgency_extraversion}"
  # second score above 0 signals F(feeling) and -T(turbulent), below 0 - T(thinking) and -A(assertive)
  puts "Your Agrreableness Score - #{ii_agreeableness}"
  # third score above 0 signals J(judging, below 0 - P(prospecting)
  puts "Your Concientiousness Score - #{iii_conscientiousness}"
  # fourth score above 0 signals -A, below 0 - -T
  puts "Your Emotional Stability Score - #{iv_emotional_stability}"
  # fifth score above 0 signals N(intuitive) and J(judging), below 0 - signals S(observant) and P(prospecting)
  puts "Your Intellect and Imagination Score - #{v_intellect_imagination}"























































  # puts questions
  # selected = all_movies.select { |item| item[:year] < max_year }
  # return selected.sort_by { |movie| movie[:earnings] }.reverse[0..number - 1]
