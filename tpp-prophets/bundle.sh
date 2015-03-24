tar --exclude=.hg --exclude=.DS_Store --exclude=.hgcheck --exclude=.git --exclude=*.tar --exclude=*.bz2 --exclude=bundle.sh -cvf package.tar ./;bzip2 -f package.tar
