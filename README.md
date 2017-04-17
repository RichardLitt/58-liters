# 58 Liters

> An account of what I keep in my Osprey Exos 58.

This is the source for 58liters.com.

This website is a place for showcasing what we've got in our bags: for nomads, travelers, hikers, and the rest of us who like carrying our homes with us.

## Build

This uses [`hugo`](https://gohugo.io/), version `v0.19`. Clone, and from the main dir, run `hugo`.

To watch, run: `hugo serve -wv`.

### Images

I have been manually editing and optimizing images in Photoshop. A gulp script would be necessary for faster implementations. We'll get to that eventually.

## Contribute

Please do! Drop me an email, open an issue, make a Pull Request.

### To Add Your Own Bag

Awesome! You want to add your own bag.
That is the goal of this site, in the end, but right now it may take a bit of extra effort.

Here is what is needed from you, ultimately: good, quality photos, and stories and descriptions.

#### Non-Code

1. Take good photos from above, of each image. Take the photos on a uniform surface that you use for all of the content (unless it is something beautiful, like pine needles and rocks).
2. Take a knolling shot - all of the stuff lined up well. Try to take it from above, or from somewhere where it looks nice.
3. Name all of the photos something descriptive.
4. If you're not going to go on and code, make a Google Doc with sections for each image. That's it! Send me the doc and the images somehow - Dropbox works.

I'll worry about optimizing the images. Write your content in Markdown, if you can.

#### If you want to code.

If you know how to code, here's how you add the content. This will also make markdown files for all of the content.

1. Run `sh utils/create_dir.sh $title` from the base directory to automatically make the default folders and files needed.

`$title` should be in the format `username-year-month`.

- `$title` in `data/bags.json`
- A knolling image in `static/img/$title-knolling.jpg`
- A directory of images in `static/img/$title`
- A bag file in `content/bags/$title.md`
- A folder of text files in `content/$title`
- An `index.md` file in `content/$title/index.md`

Look at the `richlitt-2015-04` example for all of these.

2. Add all of your images into `statci/img/$title`. Make sure they are named sensibly.
3. From project root, run: `sh utils/create_items.sh $title`.
4. Edit `data/bags.json` to make sure the array makes sense.
5. Edit `content/bags/*.md` file to make the Format work.
6. Test by running `hugo serve -vw`. Go to `localhost:1313`.
7. Make a pull request! \o/

## Thanks

The theme comes originally from [@kishaningithub](https://github.com/kishaningithub/hugo-creative-portfolio-theme), although I have edited and adapted it and will continue to do so. Thanks to [Steve Francia](https://github.com/spf13) for creating Hugo and the awesome community around the project. And also thanks to [Bootstrapious](http://bootstrapious.com/) for creating the original theme.

## Maintainer

[@RichardLitt](https://github.com/RichardLitt).

## License

All code is under a [MIT](LICENSE) © 2017 Burnt Fen Creative.

All text in Markdown files is under a [Creative Commons Attribution-NonCommercial 4.0 Unported](https://creativecommons.org/licenses/by-nc/4.0/legalcode) license © 2017 Richard Littauer.
