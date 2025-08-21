module ApplicationHelper

  def list_item_count_sentence( type_of_thing, number_of_things )
    list_item_count_sentence = 'There '
    if number_of_things == 1
      list_item_count_sentence += 'is '
    else
      list_item_count_sentence += 'are '
    end
    list_item_count_sentence += ActiveSupport::NumberHelper.number_to_delimited( number_of_things )
    list_item_count_sentence += ' '
    list_item_count_sentence += type_of_thing.pluralize( number_of_things ) 
    list_item_count_sentence += '.'
    list_item_count_sentence = content_tag( 'p', list_item_count_sentence )
  end
  
  def previous_next( type_of_thing_label, previous_url, next_url )
    previous_next = ''
    previous_next += content_tag( 'li', link_to( "Previous #{type_of_thing_label}", previous_url, :rel => 'prev' ), :class => 'previous' ) if previous_url
    previous_next += content_tag( 'li', link_to( "Next #{type_of_thing_label}", next_url, :rel => 'next' ), :class => 'next' ) if next_url
    previous_next = content_tag( 'ul', previous_next.html_safe, :class => 'previous-next' )
    previous_next
  end
end
