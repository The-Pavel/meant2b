Encoding.default_internal = Encoding::UTF_8
require 'csv'


  questions = []
  CSV.foreach('b5c1.csv', headers: :first_row) do |row|
    break if row[0] == nil
    question = {}
    question[:question] = row[0]
    question[:traits] = [row[3], row[4]]
    questions << question
  end
# CSV.parse("CSV,data,String") do |row|
#   # use row here...
# end
  figures = []
  CSV.foreach('values_and_coeff.csv') do |row|
    break if row[0] == nil
    values = {}
    values[:traits] = [row[1], row[2]]
    values[:coeff] = [row[3].to_f, row[4].to_f]
    figures << values
  end
  i_surgency_extraversion = 0
  ii_agreeableness = 0
  iii_conscientiousness = 0
  iv_emotional_stability = 0
  v_intellect_imagination = 0

  questions.sample(3).each do |question|
    puts question[:question]
    matching_figure = figures.select{|pair| pair[:traits] == question[:traits] }
    # puts matching_figure
     puts question[:traits]
     primary = question[:traits][0][/([A-Z])+/]
     secondary = question[:traits][1][/([A-Z])+/]
     sign_primary = question[:traits][0][/\W/]
     sign_secondary = question[:traits][1][/\W/]
     number_primary = matching_figure[0][:coeff][1]
     number_secondary = matching_figure[0][:coeff][0]
     puts number_primary
     puts number_secondary
     puts "Is this you (y) or not you (n)?"
     input = gets.chomp
     if input == "n"
      number_primary = -(number_primary)
      number_secondary = -(number_secondary)
     end
     puts number_primary
     puts number_secondary

      case primary
      when "V"
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
    puts i_surgency_extraversion
    puts ii_agreeableness
    puts iii_conscientiousness
    puts iv_emotional_stability
    puts v_intellect_imagination
  end

  puts "Your Extraversion Score - #{i_surgency_extraversion}"
  puts "Your Agrreableness Score - #{ii_agreeableness}"
  puts "Your Concientiousness Score - #{iii_conscientiousness}"
  puts "Your Emotional Stability Score - #{iv_emotional_stability}"
  puts "Your Intellect and Imagination Score - #{v_intellect_imagination}"























































  # puts questions
  # selected = all_movies.select { |item| item[:year] < max_year }
  # return selected.sort_by { |movie| movie[:earnings] }.reverse[0..number - 1]
