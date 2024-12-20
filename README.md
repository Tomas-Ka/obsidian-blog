# Tomas' obsidian blog!
Uses my custom blue theme that builds on the [green web template](https://github.com/meewgumi/green-web-template) by [Megumi Tanaka](https://megumi.co) and the [Jekyll digital garden template](https://github.com/maximevaillancourt/digital-garden-jekyll-template) by Maxime Vaillanecourt.

# To run locally
1. install ruby and rubygems (`pacman -S rubygems ruby` on arch)
    * If on arch, make sure you set your path properly, see [this](https://wiki.archlinux.org/title/Ruby#RubyGems)
3. install the bundle gem (`gem install bundler`)
4. run bundler `bundle`
5. run locally with `bundle exec jekyll serve`


### Features
-   **Jekyll website** Generates a website from an obsidian vault with links and other functionality.
-   **Obsidian embeds!** Yes, images formatted `![[like this]]` will render automatically with the correct asset path!
-   **Emoji favicons!** Configure at site level or page level with `favicon:` variable
-   **Archive Page!** An index of all notes, date updated, category, and excerpt.
-   **Node Graph** Like in Obsidian! Has it's own page, and you can toggle it on and off
-   **Obsidian Templates!** Easily create a new note or page with the proper front matter variables.
-   **Blue Theme!** This is my (Tomas') version of Megu's own Bok choi theme, which you can see here: [megu.space](https://megu.space)
-   **Automatic title generation** is done from the `title:` variable. Renders as `<h1>` at the top of the page
-   **Permalinks** permalink /:slug for all notes and pages to handle things automatically!
-   **Privacy focused** No external calls to scripts, instead they're all saved in `assets/js`

# Template Quirks

Interesting errors I've encountered:

-   Your file path must not have any spaces in it or your `bundle` command will fail!
-   Plugins are not compatible with Github Pages instance of Jekyll, so you have to build your site locally and reconfigure output to `docs` folder. I have a similar setup in [this github pages repository](https://github.com/meewgumi/digital-garden-ghpages-template)
-   This template only works for apex and subdomains. If you build your site in a `/directory`, you may have to reconfigure the relative links throughout the template.
-   ~~Bidirectional link generator converts double bracket links inside codeblocks too~~ **Fixed!**
-   Does not yet support Obsidian Heading Links in this format `[[page#Heading]]`, although each heading automatically generates an `id=` so you can create anchor links manually with HTML
-   Emoji is not unicode, so they might not display properly in all browsers and operating systems
-   ~~Footnotes automatically open in new tab, even if they're internal links~~ **Fixed**
-   ~~D3.js graph zooms when you scroll, so I disabled the graph by default~~ **Fixed**, but the graph is still disabled by default.
-   Excerpts on archive page truncate weirdly. I wish there was a way to exclude headings. There probably is if I get deeper into Nokogiri documentation.

# License

[Original Jekyll template](https://github.com/maximevaillancourt/digital-garden-jekyll-template) by Maxime Vaillancourt is available under the [MIT license](LICENSE.md). [Buy Maxime a coffee](https://ko-fi.com/maximevaillancourt)! ☕️

The "Green" version by Megumi Tanaka is [publicly available on Github](https://github.com/meewgumi/green-web-template) and you are free to edit as you wish! [Buy Megumi a tea](https://www.buymeacoffee.com/megumi)! 🍵
