defmodule Mix.Tasks.Create do
  @moduledoc "mix tasks.create"
  use Mix.Task
  alias InvoiceCreator.HTML
  Mix.Task.run("app.start")

  @shortdoc "asdasd"
  def run(args) when args == ["-h"] or args == ["--help"] do
    IO.puts("First param is name of the new file without ending, like: mix create problemname")
  end

  def run(_args) do
    html = HTML.get()
    {:ok, _filename} = PdfGenerator.generate(html, page_size: "A4", filename: "test")
  end

  # def run(args) do
  #   IO.inspect(args, label: "Only filename as input is needed")
  # end
end
