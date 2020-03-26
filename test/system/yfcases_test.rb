require "application_system_test_case"

class YfcasesTest < ApplicationSystemTestCase
  setup do
    @yfcase = yfcases(:one)
  end

  test "visiting the index" do
    visit yfcases_url
    assert_selector "h1", text: "Yfcases"
  end

  test "creating a Yfcase" do
    visit yfcases_url
    click_on "New Yfcase"

    fill_in "Case number", with: @yfcase.case_number
    click_on "Create Yfcase"

    assert_text "Yfcase was successfully created"
    click_on "Back"
  end

  test "updating a Yfcase" do
    visit yfcases_url
    click_on "Edit", match: :first

    fill_in "Case number", with: @yfcase.case_number
    click_on "Update Yfcase"

    assert_text "Yfcase was successfully updated"
    click_on "Back"
  end

  test "destroying a Yfcase" do
    visit yfcases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yfcase was successfully destroyed"
  end
end
