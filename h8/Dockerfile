FROM haskell:8
RUN cabal update && cabal install pandoc pandoc-citeproc
COPY .gitconfig /root/
