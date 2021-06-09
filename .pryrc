# Aliases
#   !!!                Alias for `exit-program`
#   !!@                Alias for `exit-all`
#   $                  Alias for `show-source`
#   ?                  Alias for `show-doc`
#   @                  Alias for `whereami`
#   bb                 Alias for `break`
#   breakpoint         Alias for `break`
#   cc                 Alias for `continue`
#   clipit             Alias for `gist --clip`
#   dd                 Alias for `down`
#   ff                 Alias for `frame`
#   file-mode          Alias for `shell-mode`
#   fin                Alias for `finish`
#   find-routes        Alias for `find-route`
#   h                  Last 20 commands
#   hG                 Commands matching expression ever used
#   hg                 Up to 20 commands matching expression
#   history            Alias for `hist`
#   hr                 Hist -r <command number> to run a command
#   nn                 Alias for `next`
#   quit               Alias for `exit`
#   quit-program       Alias for `exit-program`
#   reload-method      Alias for `reload-code`
#   show-method        Alias for `show-source`
#   ss                 Alias for `step`
#   uu                 Alias for `up`
#   ww                 Alias for `whereami`

require 'hirb'

Hirb.enable
old_print = Pry.config.print
Pry.config.print = proc do |output, value|
  Hirb::View.view_or_page_output(value) || old_print.call(output, value)
end
