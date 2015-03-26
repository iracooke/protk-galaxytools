X!Tandem
========

Galaxy wrapper for running the X!Tandem search engine and converting results to pepXML

Requirements
------------

This package uses protk_ and the trans_proteomic_pipeline_.

.. _protk: https://github.com/iracooke/protk
.. _trans_proteomic_pipeline: http://tools.proteomecenter.org/wiki/index.php?title=Software:TPP

There are two ways you can satify these dependencies:

1. **Manual Install:** Details on how to install protk_ and the trans_proteomic_pipeline_ manually are available here_.

2. **Use Docker:** These tools are designed to run inside a docker_ container. If your galaxy supports `running tools within a docker container`__ you don't need to worry about dependencies. Simply install and things should just work.

.. _docker: https://www.docker.com/
.. _here: https://github.com/iracooke/protk/#galaxy-integration
.. _container: https://wiki.galaxyproject.org/Admin/Tools/Docker
__ container_