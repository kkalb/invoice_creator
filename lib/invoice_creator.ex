defmodule InvoiceCreator do
  @moduledoc """
  Documentation for `InvoiceCreator`.
  """
  alias InvoiceCreator.HTML

  @doc """

  """
  def create do
    html = HTML.get()
    {:ok, _filename} = PdfGenerator.generate(html, page_size: "A4", filename: "test")
  end
end
