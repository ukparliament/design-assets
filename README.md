# UK Parliament Design Assets

This repository contains design system assets and tools for UK Parliament digital services. It provides both the official Parliament Design System assets and a Ruby gem for easy integration with Rails applications.

## Contents

### `library_design/` - Ruby Gem

A Rails engine gem that provides easy integration of the Parliament Design System into Ruby on Rails applications. This is the main consumable component of this repository.

**Current Version:** 0.2.16

**Features:**
- Pre-built CSS assets (Bootstrap 4.6.2, FontAwesome 5.15.4, Parliament Design System)
- ERB templates and partials for common UI components (header, footer, navigation, breadcrumbs)
- Helper modules for list item counts and previous/next navigation
- CORS middleware configuration

### `design-system/` - Official Parliament Design System Assets

Contains the official Parliament Design System assets downloaded from [designsystem.parliament.uk](https://designsystem.parliament.uk).

**Includes:**
- Compiled CSS files (`styles.css`, `styles-imports.css`)
- Web fonts and font files
- Icons and favicon
- UMD JavaScript builds

### `design-system-simulation/` - Legacy CSS (Deprecated)

A stylesheet created to simulate the Parliament design system before official assets were available. Used on legacy applications like:
- [Election Results](https://electionresults.parliament.uk/)
- [Egg Timer](https://api.parliament.uk/egg-timer)
- [Procedure Browser](https://api.parliament.uk/procedure-browser)

⚠️ **Note:** This is being phased out in favor of the official design system assets.

### `user-css/` - Application-Specific Styles

Custom CSS for specific applications that extend beyond the design system, currently includes:
- Procedure Browser customizations

## Installation

### Using the library_design Gem

Add the following to your Rails application's `Gemfile`:

```ruby
gem "library_design", github: "ukparliament/design-assets", glob: 'library_design/*.gemspec', tag: "0.2.16"
```

Then run:
```bash
bundle install
```

### Direct Asset Usage

You can also use the design system assets directly by copying files from the `design-system/` directory to your application.

## Usage

### In Rails Applications

After installing the gem, you can use the provided partials and stylesheets:

#### Include Stylesheets

```erb
<%= render 'library_design/library_design_stylesheets' %>
```

This includes:
- Bootstrap 4.6.2
- FontAwesome 5.15.4
- Parliament Design System styles
- Library extras

#### Use Template Partials

```erb
<!-- Header with Parliament branding -->
<%= render 'library_design/header/header' %>

<!-- Footer -->
<%= render 'library_design/footer' %>

<!-- Breadcrumb navigation -->
<%= render 'library_design/header/crumb' %>
```

#### Helper Methods

The gem provides several helper methods:

```ruby
# In your controllers, include the crumbs concern
include LibraryDesign::Crumbs

# Use helper methods in views
list_item_count_sentence("item", items.count)
previous_next("page", previous_page_url, next_page_url)
```

### Asset Precompilation

The gem automatically configures asset precompilation for the required stylesheets.

## Development

### Making Changes

1. Create a feature branch:
   ```bash
   git checkout -b your-feature-branch
   ```

2. Make your changes (usually to `library-extras` CSS or templates)

3. Update the version number in `/lib/library_design/version.rb`

4. Commit and push your changes:
   ```bash
   git add .
   git commit -m "Description of changes"
   git push
   ```

5. Create a pull request:
   ```bash
   gh pr create
   ```

### Publishing a Release

After merging changes to main:

1. Update the version number in `library_design/lib/library_design/version.rb`
2. Push changes to the main branch
3. [Create a new release](https://github.com/ukparliament/design-assets/releases)
4. Use a tag that matches the version number (e.g., "0.2.17")
5. Add release notes describing the changes
6. Click "Publish release"

### Using New Versions

To use a new version in your application:

1. Update the tag in your `Gemfile`:
   ```ruby
   gem "library_design", github: "ukparliament/design-assets", glob: 'library_design/*.gemspec', tag: "0.2.17"
   ```

2. Update dependencies:
   ```bash
   bundle update library_design
   ```

## Resources

- [Parliament Design System](https://designsystem.parliament.uk) - Official design system documentation
- [Repository Issues](https://github.com/ukparliament/design-assets/issues) - Bug reports and feature requests
- [Repository Wiki](https://github.com/ukparliament/design-assets/wiki) - Additional documentation

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

Please check with the UK Parliament for licensing information.

---

## Developer Notes

<details>
<summary>Legacy development workflow notes</summary>

```
in design assets

git checkout -b add-test-helper

add and edit stuff

Usually library-extras

/lib/library_design/version.rb

change version number

Commons Library Heroku google spreadsheet

git add and commit

still on branch

gh pr create

defaults, submit

pull request on github

merge and confirm

git checkout main, pull

releases, draft a new release

create new tag

new release

-------
go into app, update version in gemfile

branch to install new version, back to main

bundle update before pull for update
```
</details>
