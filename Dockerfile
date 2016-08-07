FROM haskell:7
RUN cabal update && cabal install pandoc pandoc-citeproc
RUN cabal install th-extras
RUN cabal install strict
RUN cabal install random megaparsec pretty pretty-show happy optparse-applicative
RUN cabal install derive
RUN cabal install quickcheck-2.8.1
RUN apt-get update
RUN apt-get install vim -y
COPY bigul /bigul
COPY bipandoc /bipandoc
RUN cd bigul/Haskell && cabal configure && cabal build && cabal install
RUN cd bipandoc && cabal configure && cabal build && cabal install
COPY bipandoc.vimrc /root/.vimrc
CMD touch -f abc.html abc.md && vim abc.html abc.md +vs +bp +':call EnableBiPandoc()'
