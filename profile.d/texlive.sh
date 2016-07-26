# Symbolic link that point to the desired release
TEXDIR=/usr/local/texlive/current

export PATH="${TEXDIR}/bin/x86_64-linux:${PATH}"
export INFOPATH="${TEXDIR}/texmf-dist/doc/info:${INFOPATH}"
