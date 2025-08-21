module PreviousNextHelper

  def previous_next( type_of_thing_label, previous_url, next_url )
    previous_next = ''
    previous_next += content_tag( 'li', link_to( "Previous #{type_of_thing_label}", previous_url, :rel => 'prev' ), :class => 'previous' ) if previous_url
    previous_next += content_tag( 'li', link_to( "Next #{type_of_thing_label}", next_url, :rel => 'next' ), :class => 'next' ) if next_url
    previous_next = content_tag( 'ul', previous_next.html_safe, :class => 'previous-next' )
    previous_next
  end
end
