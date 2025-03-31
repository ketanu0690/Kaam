#!/bin/bash

# GitHub Repository Details
GITHUB_USER="ketanu0690"
REPO_NAME="Kaam"


# Define Additional Issues
issues=(
 
)

# Create Issues in GitHub
for issue in "${issues[@]}"; do
  title=$(echo "$issue" | cut -d "|" -f1)
  labels=$(echo "$issue" | cut -d "|" -f2)
  
  gh issue create --repo "$GITHUB_USER/$REPO_NAME" \
      --title "$title" \
      --body "$title" \
      --label "$labels"

  echo "Created issue: $title"
done

echo "✅ All additional issues have been created!"
