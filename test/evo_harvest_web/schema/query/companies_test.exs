defmodule EvoHarvestWeb.Schema.Query do
  use EvoHarvestWeb.ConnCase, async: true

  setup do
    Code.load_file("priv/repo/seeds.exs") 
  end

  @query """
  {
    companies {
      name
    }
  }
  """
  test "menuItems field returns menu items" do
    conn = build_conn() 
    conn = get conn, "/api", query: @query
    assert json_response(conn, 200) == %{ 
      "data" => %{
        "companies" => [
          %{"name" => "Company 1"},
          %{"name" => "Company 2"},
          %{"name" => "Company 3"},
        ]
      }
    }
    end
end

