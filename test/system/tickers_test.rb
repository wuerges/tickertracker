require "application_system_test_case"

class TickersTest < ApplicationSystemTestCase
  setup do
    @ticker = tickers(:one)
  end

  test "visiting the index" do
    visit tickers_url
    assert_selector "h1", text: "Tickers"
  end

  test "creating a Ticker" do
    visit tickers_url
    click_on "New Ticker"

    fill_in "Description", with: @ticker.description
    fill_in "Ticker", with: @ticker.ticker
    fill_in "Url", with: @ticker.url
    click_on "Create Ticker"

    assert_text "Ticker was successfully created"
    click_on "Back"
  end

  test "updating a Ticker" do
    visit tickers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @ticker.description
    fill_in "Ticker", with: @ticker.ticker
    fill_in "Url", with: @ticker.url
    click_on "Update Ticker"

    assert_text "Ticker was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticker" do
    visit tickers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticker was successfully destroyed"
  end
end
