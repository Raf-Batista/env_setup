#!/bin/bash

# https://www.digitalocean.com/community/tutorials/how-to-use-irb-to-explore-ruby

cat <<- EOF > ~/.irbrc 
    #!/bin/env ruby 

    require 'irb/completion'

    IRB.conf[:SAVE_HISTORY] = 1000

    # If you wanted to specify a different history file, add this to your configuration file:
    # IRB.conf[:HISTORY_FILE] = '~/your_history_filename'

    IRB.conf[:AUTO_INDENT] = true

    # history command
    def history(count = 0)

    # Get history into an array
    history_array = Readline::HISTORY.to_a

    # if count is > 0 we'll use it.
    # otherwise set it to 0
    count = count > 0 ? count : 0

    if count > 0
        from = hist.length - count
        history_array = history_array[from..-1]
    end

    print history_array.join("\n")
    end

EOF 
