FROM gitlab/gitlab-runner-helper:x86_64-1f513601
RUN \
	wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-git-crypt/master/sgerrand.rsa.pub && \
	wget -q https://github.com/sgerrand/alpine-pkg-git-crypt/releases/download/0.6.0-r1/git-crypt-0.6.0-r1.apk && \
	apk add --no-cache *.apk && \
	rm *.apk
