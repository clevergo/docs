FROM centos:latest as builder

RUN curl -o /etc/yum.repos.d/hugo.repo https://copr.fedorainfracloud.org/coprs/daftaupe/hugo/repo/epel-8/daftaupe-hugo-epel-8.repo

RUN dnf update -y

RUN dnf install -y hugo nodejs git

WORKDIR /src

COPY . /src

RUN hugo


FROM nginx

COPY --from=builder /src/public /usr/share/nginx/html