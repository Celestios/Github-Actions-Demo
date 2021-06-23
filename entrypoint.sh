#!/bin/bash

repo_token=$1

echo "token: $repo_token"

milestone="milestone1"

IFS='/' read owner repository <<< "$GITHUB_REPOSITORY"

release_url=$(dotnet gitreleasemanager create \
--milestone $milestone \
--targetcommitish $GITHUB_SHA \
--token $repo_token \
--owner $owner \
--repository $repository)

if [ $? -ne 0 ]; then
  echo "::error::Failure"
  exit 1
fi

echo "::debug::The release url: $release_url"

echo "::set-output name=test-var::$release_url"

exit 0
