#This module exists entirely to save finger strain for programmers.
#It is designed to be included in your ApplicationController.
#
#See abingo.rb for descriptions of what these do.

module AbingoSugar

  def ab_test(test_name, alternatives = nil, options = {})
    if (Abingo.options[:enable_specification] && !params[test_name].blank?)
      Rails.logger.debug "Specification via params: #{params[test_name]}"
      choice = params[test_name]
    elsif (Abingo.options[:enable_override_in_session] && !session[test_name].blank?)
      Rails.logger.debug "Specification via session #{session[test_name]}"
      choice = session[test_name]
    elsif (alternatives.nil?)
      Rails.logger.debug "No specification, flipping because alternatives are nil for #{test_name}}"
      choice = Abingo.flip(test_name)
    else
      Rails.logger.debug "Standard A/Bingo logic for #{test_name}}"
      choice = Abingo.test(test_name, alternatives, options)
    end

    if block_given?
      yield(choice)
    else
      choice
    end
  end

  def bingo!(test_name, options = {})
    Abingo.bingo!(test_name, options)
  end

end