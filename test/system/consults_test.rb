require "application_system_test_case"

class ConsultsTest < ApplicationSystemTestCase
  setup do
    @consult = consults(:one)
  end

  test "visiting the index" do
    visit consults_url
    assert_selector "h1", text: "Consults"
  end

  test "creating a Consult" do
    visit consults_url
    click_on "New Consult"

    fill_in "Consult time", with: @consult.consult_time
    fill_in "Material cost", with: @consult.material_cost
    fill_in "Material used", with: @consult.material_used
    fill_in "Staff", with: @consult.staff_id
    fill_in "Study", with: @consult.study_id
    fill_in "Wait time", with: @consult.wait_time
    click_on "Create Consult"

    assert_text "Consult was successfully created"
    click_on "Back"
  end

  test "updating a Consult" do
    visit consults_url
    click_on "Edit", match: :first

    fill_in "Consult time", with: @consult.consult_time
    fill_in "Material cost", with: @consult.material_cost
    fill_in "Material used", with: @consult.material_used
    fill_in "Staff", with: @consult.staff_id
    fill_in "Study", with: @consult.study_id
    fill_in "Wait time", with: @consult.wait_time
    click_on "Update Consult"

    assert_text "Consult was successfully updated"
    click_on "Back"
  end

  test "destroying a Consult" do
    visit consults_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consult was successfully destroyed"
  end
end
