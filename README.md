# 58 Liters

> An account of what I keep in my Osprey Exos 58

## About

This website is a place for showcasing what I've got in my bag.

I'd like for it to be exportable to other people, too, but there's work to do on that front.

## Build

This uses [`hugo`](https://gohugo.io/), version `v0.19`. Clone, and from the main dir, run `hugo`.

To watch, run: `hugo serve -wv`.

### Images

I have been manually editing and optimizing images in Photoshop. A gulp script would be necessary for faster implementations. We'll get to that eventually.

## Contribute

Please do! Drop me an email, open an issue, make a Pull Request.

### To Add Your Own Bag

Open a Pull Request with the following:

`$title` should be in the format `username-year-month`.

- `$title` in `data/bags.json`
- A knolling image in `static/img/$title-knolling.jpg`
- A directory of images in `static/img/$title`
- A bag file in `content/bags/$title.md`
- A folder of text files in `content/$title`
- An `index.md` file in `content/$title/index.md`

Look at the `richlitt-2015-04` example for all of these.

You can run `sh utils/create_dir.sh $slug` from the base directory to automatically make the default folders and files needed.

#### TODO Make this easier

- What we should do is not use `data` at all, but grab from the `content/bags` folder.
- The knolling image should be in `static/img/$title/`, and sorted out by the partials
- Making two markdown stubs can probably be automated.

## Thanks

The theme comes originally from [@kishaningithub](https://github.com/kishaningithub/hugo-creative-portfolio-theme), although I have edited and adapted it and will continue to do so.

Thanks to [Steve Francia](https://github.com/spf13) for creating Hugo and the awesome community around the project. And also thanks to [Bootstrapious](http://bootstrapious.com/) for creating the original theme.


## License

All code is under a [MIT](LICENSE) © 2017 Burnt Fen Creative.

All text in Markdown files is under a [Creative Commons Attribution-NonCommercial 4.0 Unported](https://creativecommons.org/licenses/by-nc/4.0/legalcode) license © 2017 Richard Littauer.
