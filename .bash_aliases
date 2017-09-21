alias vi='vim -p'
alias xd='cd ..'
alias m='make -j6'
alias mt='make -j6 && workon navitia && ctest --output-on-failure && workon tyr && make docker_test'

# fuck let you call again the previous command, but with sudo
alias fuck='sudo $(fc -ln -1)'

alias jq_pretty_journey="jq '.journeys[] | {vj:  [.sections[].links[] | select(.type  | contains(\"vehicle\"))| .id], type: .type, arrival: .arrival_date_time }'"
