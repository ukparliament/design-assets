# Design system

This repo includes both a working untangling of the Design System and a gem which has been designed to make implementation of the [Parliament Design System](https://designsystem.parliament.uk) easier with Ruby-on-Rails applications.

## How to do a release

Once you have committed changes, or merged in a Pull Request, you need to follow these steps.

1. Update the `version.rb` file with a semantic version number, initial release is 0.1.1 - make sure this is available and pushed to the repo

2) [draft a new release](https://github.com/ukparliament/design-assets/releases) and type in the tag which matches the version number you've added to `version.rb`, say "0.2.3" or whatever.

3) Give it a title and add relevant release notes, like "Updated bootstrap version to 4.6.1" or whatever

4) Click on "Publish release"

This version will then be available in other apps by including the following gem

```gem "library_design", github: "ukparliament/design-assets", glob: 'library_design/*.gemspec', tag: "0.1.1"```
