#!/bin/sh


rubyenv="$HOME/.rbenv/versions/2.6.0/bin"

serve() {
    echo "serve pages locally!"
    echo "Goto: \n\thttp://localhost:4000/"
    $rubyenv/bundle exec $rubyenv/jekyll serve -t --drafts
}

install() {
    $rubyenv/bundle install
}

Action=$1

case $Action in
    "serve")
        serve
    ;;
    "install")
        install
    ;;
    *)
        echo "unk choice"
    ;;
esac
