# Gettext Umbrella Issue

* app `C` depends on app `B`
* app `B` depends on app `A`
* app `A` is empty
* app `B` contains module `B.Gettext` with `use Gettext`
* app `C` contains module `C` which imports `B.Gettext` and calls single `dgettext` macro

## How to reproduce issue
1. Run `mix gettext.extract` from umbrella root. It creates `apps/b/priv/gettext/c.pot`
file with `msgid "String C"`. Everything is ok for now.
2. Run `mix gettext.extract` second time. `msgid "String C"` is removed from `c.pot`.
