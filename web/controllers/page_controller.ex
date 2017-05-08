defmodule Phx.PageController do
  use Phx.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def magic() do
    %HTTPoison.Response{body: body} = HTTPoison.get!("collegroup.com:9200/cmc/snapshot/latest")
    output =
      Poison.decode!(body)["_source"]["market_state"]
      |> Enum.take(15)

    Enum.map(output, fn(item) ->
      case item["symbol"] do
        "BTC" -> String.to_float(item["price_usd"])*10.88
        "ETH" -> String.to_float(item["price_usd"])*25.46
        _ -> 0
      end
    end)
    |> Enum.sum
  end

  def markets(conn, _params) do
    render conn, "markets.html", data: magic()
  end
end
