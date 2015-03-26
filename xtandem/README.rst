X!Tandem
========

Galaxy wrapper for running the X!Tandem search engine and converting results to pepXML

Requirements
------------

This package uses protk_ and the trans_proteomic_pipeline_ which need to be present in order for the tool to work.

.. _protk: https://github.com/iracooke/protk
.. _trans_proteomic_pipeline: http://tools.proteomecenter.org/wiki/index.php?title=Software:TPP

There are two ways you can satify these dependencies (choose one):

1. **Manual Install:** Details on how to install protk_ and the trans_proteomic_pipeline_ manually are available here_.

2. **Use Docker:** These tools are designed to run inside a docker_ container. If your galaxy supports `running tools within a docker container`__ you don't need to worry about dependencies. Simply install and things should just work.  The docker container itself is versioned and new versions of this tool will automatically download an update to the container if needed.

.. _docker: https://www.docker.com/
.. _here: https://github.com/iracooke/protk/#galaxy-integration
.. _container: https://wiki.galaxyproject.org/Admin/Tools/Docker
__ container_


Acknowledgements
----------------

This tool wrapper was created by Ira Cooke with contributions from Björn Grüning.  The source code for this tool and other protk galaxy tools is on github_.

.. _github: https://github.com/iracooke/protk-galaxytools

Please visit the XTandem_ page on the GPM website for details of the search engine itself.

.. _XTandem: http://www.thegpm.org/tandem/

