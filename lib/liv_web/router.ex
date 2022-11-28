defmodule LivWeb.Router do
  use LivWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {LivWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LivWeb do
    pipe_through :browser

  resources "/chat", ChatController, only: [ :show ]
    get "/", PageController, :index
  end
end
