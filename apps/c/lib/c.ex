defmodule C do
  import B.Gettext

  def c, do: dgettext("c", "String C")
end
