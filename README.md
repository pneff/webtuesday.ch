This is the webtuesday.ch web site.

## Contribute

1. Install nanoc: `gem install nanoc`
2. Edit some file: vi content/index.html
3. Compile: `nanoc compile`
4. Push to GitHub and create a pull request

This uses Nanoc, so check the
[nanoc documentation](http://nanoc.stoneship.org/docs/) for more details.

## Publish

Publishing is done automatically every five minutes from the sources in the
master branch.

But if you want to do it manually, use the following process. You need to have
commit access for this, ask if you want it.

1. Make sure you have the `output` submodule: `git submodule update --init`
2. Compile: `nanoc compile`
3. Once you're happy commit the changes
4. Then push the source code changes: `git push`
5. In addition you need to push the compiled version of the branch: `cd output`
6. Ensure you are on the branch `gh-pages`: `git status`
7. Once you are happy, commit and push the changes
