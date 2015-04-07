# md2pdf
A markdown to PDF conversion Fish script for use with the [jagregory/pandoc](https://registry.hub.docker.com/u/jagregory/pandoc/) [Pandoc](http://pandoc.org/) Docker container. By default the markdown file to be converted must be in the working directory.

## Example syntax

`md2pdf foo.md bar.pdf`

It is also possible to run the conversion in another directory by using the `-l` or `--location` flag:

`md2pdf -l /foo/bar/ foo.md bar.pdf`

This functionality is quite limited by the constraints of the container though, as giving absolute paths for the files:

`md2pdf -l /foo/bar/ /foo/bar/foo.md /foo/bar/bar.pdf`

Will **not** work, and will cause the conversion to be aborted. **Therefore the use of the `-l` option is not recommended except in unusual cases.**
