#!/bin/bash
# Script to generate Firebase configuration files for different environments/flavors
# Feel free to reuse and adapt this script for your own projects

if [[ $# -eq 0 ]]; then
  echo "Error: No environment specified. Use 'dev', 'stg', or 'prod'."
  exit 1
fi

case $1 in
  dev)
    flutterfire config \
      --project=e-commerce-mentor-dev \
      --out=lib/firebase_options_dev.dart \
      --ios-bundle-id=com.example.mentorshipEcommerce.dev \
      --ios-out=ios/flavors/dev/GoogleService-Info.plist \
      --android-package-name=com.example.mentorship_ecommerce.dev \
      --android-out=android/app/src/dev/google-services.json
    ;;

  prod)
    flutterfire config \
      --project=e-commerce-mentor-prod \
      --out=lib/firebase_options_prod.dart \
      --ios-bundle-id=com.example.mentorshipEcommerce \
      --ios-out=ios/flavors/prod/GoogleService-Info.plist \
      --android-package-name=com.example.mentorship_ecommerce \
      --android-out=android/app/src/prod/google-services.json
    ;;
  *)
    echo "Error: Invalid environment specified. Use 'dev', 'stg', or 'prod'."
    exit 1
    ;;
esac