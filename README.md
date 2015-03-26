# protk-galaxytools

[Galaxy](http://galaxyproject.org/) tool wrappers for [protk](http://github.com/iracooke/protk) tools.  All tools are available on the Galaxy [toolshed](http://toolshed.g2.bx.psu.edu).

## The Tools

- `mascot:` Run a [Mascot](http://www.matrixscience.com/search_intro.html) search from within Galaxy via your local Mascot server and convert results to `pepXML`. [Toolshed Link](https://toolshed.g2.bx.psu.edu/view/iracooke/mascot)
- `msgfplus:` Run a tandem ms search using the [ms-gf+](http://proteomics.ucsd.edu/software-tools/ms-gf/) search engine. [Toolshed Link](https://toolshed.g2.bx.psu.edu/view/iracooke/msgfplus)
- `omssa:` Run a tandem ms search using the omssa search engine. [Toolshed Link](https://toolshed.g2.bx.psu.edu/view/iracooke/omssa)
- `protk-proteogenomics:` Map peptides and proteins from a tandem ms search to genomic coordinates. 
- `sixframe-translate:` Generate 6-frame translations of nucleic acid sequences.
- `tpp-prophets:` Calculate peptide and protein probabilities from tandem ms search results using the [TPP](http://tools.proteomecenter.org/wiki/index.php?title=Software:TPP) tools, `peptide prophet`, `iProphet` and `protein prophet`. [Toolshed Link](https://toolshed.g2.bx.psu.edu/view/iracooke/tpp_prophets)
- `xtandem:` Run a tandem ms search using the [X!Tandem](http://www.thegpm.org/tandem/) search engine. [Toolshed Link](https://toolshed.g2.bx.psu.edu/view/iracooke/xtandem)

## Datatypes

Many of the tools in this suite depend on the [proteomics datatypes](https://github.com/iracooke/proteomics-datatypes) repository.  If tools are installed via the toolshed this will be automatically installed as well.

## Other dependencies

All tools in this repository depend on the [protk](http://github.com/iracooke/protk) ruby gem and a wide variety of other open source proteomics software.  While [protk](http://github.com/iracooke/protk) provides an installer for most of these tools, an easier way to ensure that all these dependencies are satisfied is to enable running tools within [Docker](https://www.docker.com/) on your Galaxy instance.  If Galaxy is configured to run tools within docker containers these tools will automatically fetch an appropriate docker image.  For details on how we build this image, refer to the [protk-dockerfile](https://github.com/iracooke/protk-dockerfile) created by [Simon Belluzzo](https://github.com/simonalpha).