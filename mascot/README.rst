Mascot
======

Galaxy wrapper for the Mascot_ tandem ms search tool and a tool to convert results to `pepXML`

.. _Mascot: http://www.matrixscience.com/

Requirements
------------

This package uses protk_, and the trans_proteomic_pipeline_ which need to be present in order for the tool to work.  In addition, you will need a working installation of Mascot_ which is commercial software. 

.. _protk: https://github.com/iracooke/protk
.. _trans_proteomic_pipeline: http://tools.proteomecenter.org/wiki/index.php?title=Software:TPP


There are two ways you can satify these dependencies (choose one):

1. **Manual Install:** Details on how to install protk_, msgfplus_ and Proteowizard_ manually are available here_.

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
