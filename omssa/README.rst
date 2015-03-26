OMSSA
=====

Galaxy wrapper for the OMSSA tandem ms search tool

Requirements
------------

This package uses protk_, omssa_ and blast_ which need to be present in order for the tool to work.

.. _protk: https://github.com/iracooke/protk
.. _omssa: http://www.ncbi.nlm.nih.gov/pubmed/15473683
.. _blast: https://toolshed.g2.bx.psu.edu/view/devteam/ncbi_blast_plus


When installing this package, if you instruct galaxy to install dependencies it will automatically install blast_ but installation of protk_ and omssa_ may require additional steps (see below).

There are two ways you can satify these dependencies (choose one):

1. **Manual Install:** Details on how to install protk_ and omssa_ manually are available here_.

2. **Use Docker:** These tools are designed to run inside a docker_ container. If your galaxy supports `running tools within a docker container`__ you don't need to worry about dependencies. Simply install and things should just work.  The docker container itself is versioned and new versions of this tool will automatically download an update to the container if needed.

.. _docker: https://www.docker.com/
.. _here: https://github.com/iracooke/protk/#galaxy-integration
.. _container: https://wiki.galaxyproject.org/Admin/Tools/Docker
__ container_


Further Info
------------

The source code for this tool and other protk galaxy tools is on github_.  Please visit the github page to contribute to the project or to `report an issue`__ 

.. _github: https://github.com/iracooke/protk-galaxytools
.. _issue: https://github.com/iracooke/protk-galaxytools/issues
__ issue_

Unfortunately the omssa_ search tool itself is `no longer actively developed`__ but it remains a useful tool.  This wrapper uses the last released omssa_ binary.

.. _developed: http://pubchem.ncbi.nlm.nih.gov/omssa/
__ developed_