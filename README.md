# Design assets

The design assets Ruby gem allows for customisation over the UK Parliament design system: https://designsystem.parliament.uk

<mark>To edit the content of the design assets gem, you need to have write access to this repository.</mark>


## Updating the content of the design assets gem

1. Check out the latest version of this repository, or <code>git pull</code> on your existing local repo.

2. Create a new branch for your changes to the code: <code>git checkout -b my-useful-branch-name</code>.

3. Edit the content: you'll usually be making changes to the library-extras CSS: <code>/design-assets/library_design/app/assets/stylesheets/library-extras-1.0.0.css</code>

4. Update the version number at <code>/design-assets/library_design/lib/library_design/version.rb</code>.

5. Update the Commons Library Heroku Google spreadsheet if any changes have been made to Commons Library applications.

6. Add and commit your changes to your branch.

7. Create a pull request on GitHub: you can use the GitHub command line tool - <code>gh pr create</code>. You can usually accept the defaults offered, then submit.

8. Find the pull request you just made on the GitHub site: merge and confirm the request when you're happy with it.

9. Back in your local repository, <code>git checkout main</code> and  <code>pull</code>.

10. On the GitHub page for the repo, select Releases on the right hand side and draft a new release.

11. Create a new tag and generate a new release.



## Updating the design assets gem within an application

1. In your Ruby application, update the <code>gemfile</code> to point to the new gem version.

2. You can branch to install new version, then return back to main.

3. You can <code>bundle update</code> before pulling.
