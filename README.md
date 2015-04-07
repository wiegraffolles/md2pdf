# md2pdf
A markdown to PDF conversion Fish script for use with the [jagregory/pandoc](https://registry.hub.docker.com/u/jagregory/pandoc/) [Pandoc](http://pandoc.org/) Docker container. By default the markdown file to be converted must be in the working directory.

## Example syntax

`md2pdf foo.md bar.pdf`

It is also possible to run the conversion in another directory by using the `-l` or `--location` flag:

`md2pdf -l /foo/bar/foo.md bar.pdf`

The PDF argument cannot be an absolute path, as the output must be local to the same directory as the markdown file.
