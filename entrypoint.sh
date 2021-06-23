#!/bin/bash

repo_token=$1

milestone="milestone1"

IFS='/' read owner repository <<< "$GITHUB_REPOSITORY"

release_url=$(dotnet gitreleasemanager create \
--milestone $milestone \
--targetcommitish $GITHUB_SHA \
--token $repo_token \
--owner $owner \
--repository $repository)

echo "::set-output name=test-var::$release_url"

exit 0
