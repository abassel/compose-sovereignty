#!/bin/bash

# PENDING:
# For any missing item below, notify the missing item and increment a counter for each violation
# Example notification: 🚨 <service_name> <ERROR DESCRIPTION> | provide a solution like: echo <MISSING DATA> >> <README.md PATH>
# Loop thru all items under apps directory and check all items have the following:
# - the root project README.md should have the item in the Available Services table properly linked to apps directory
# - README.md under apps should have a description of the service
# - README.md under apps should have the icon.png
# - README.md under apps should have a valid link to the product documentation
# - README.md under apps should have a valid link to the product repository
# - README.md under apps should have a network isolation section and it reflects the docker-compose.yml
# - README.md under apps should have a known issues section
# - icon.png with dimension 75x75(use file command to check dimension and provide a fix like: sips -Z 75 <path to icon.png>)
# - docker-compose.yml under apps should pass yamllint
# Example notification: 🚨 <service_name> <ERROR DESCRIPTION> <SUGGESTED FIX>


# Pending: If in mac os x, run optimization below
# Optimize and resize icons to 75x75px
for icon in ./apps/*/icon.png; do
  if [ -f "$icon" ]; then
    sips -Z 75 "$icon"
  fi
done

# PENDING: exit code should be the counter with violations. Echo a message with the number of violations
# Example notification: 🟢 All good
# Example notification: 🚨 <COUNTER> Errors\n echo "fix suggestions in fix.sh:" cat fix.sh 