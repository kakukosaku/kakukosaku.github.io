#!/bin/sh


rubyenv="$HOME/.gem/ruby/2.6.0/bin"

serve() {
    echo "serve pages locally!"
    echo "Goto: \n\thttp://localhost:4000/"
    $rubyenv/bundle exec $rubyenv/jekyll serve
}

update() {
    echo "update plugin: github-pages"
    gem update github-pages
}

Action=$1

case $Action in
    "serve")
        serve
    ;;
    "update")
        update
    ;;
    *)
        echo "unk choice"
    ;;
esac
