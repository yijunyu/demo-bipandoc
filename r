install(){
docker run -it -v ${PWD}/bipandoc:/bipandoc pandoc7 git clone https://yijunyu@bitbucket.org/prl_tokyo/bipandoc.git
docker run -it -v ${PWD}/bigul:/bigul pandoc7 git clone https://yijunyu@bitbucket.org/prl_tokyo/bigul.git
}
#docker run -it -v ${PWD}/bipandoc:/bipandoc -v ${PWD}/bigul:/bigul pandoc7 bash
docker run -it -v ${PWD}/bipandoc:/bipandoc -v ${PWD}/bigul:/bigul pandoc7
