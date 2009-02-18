Template solution suggested by [Ryan Bates](http://github.com/ryanb/rails-templates/tree/master "Ryan Bates")
-------------------------------------------------------------------------------------------------------------

<code>
  function railsapp {
    template=$1
    appname=$2
    shift 2
    rails $appname -m http://github.com/jnstq/rails-templates/raw/master/$template.rb $@
  }
</code>