# Requirements

`pdflatex` (Can be obtained from [MacTeX](https://www.tug.org/mactex/) on macOS).

# Updating the cover page

The cover page of the final document uses `Cover.pdf`. The source `.svg` is also included for easier updating. Once the `.svg` has been updated, the `.pdf` will also need to be updated. This can be done by opening the `.svg` in Photoshop, and chosing `Save As...` to save the new version of the `.pdf`. Unfortunately, ImageMagick's `convert` does not properly save the `.pdf` (it does not include the CSCC logo).

# Building the rule book

## Building for "web"

Run `./scripts/build-web-pdf.sh`. The resulting `.pdf` will be in the `output` directory called `cscc-road-rally-rules.pdf`.

## Building for "print"

Run `./scripts/build-print-pdf.sh`. The resulting `.pdf` will be in the `output` directory called `cscc-road-rally-rules_for-print.pdf.
