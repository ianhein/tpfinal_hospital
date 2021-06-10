require "test_helper"

class ConsultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consult = consults(:one)
  end

  test "should get index" do
    get consults_url
    assert_response :success
  end

  test "should get new" do
    get new_consult_url
    assert_response :success
  end

  test "should create consult" do
    assert_difference('Consult.count') do
      post consults_url, params: { consult: { consult_time: @consult.consult_time, material_cost: @consult.material_cost, material_used: @consult.material_used, staff_id: @consult.staff_id, study_id: @consult.study_id, wait_time: @consult.wait_time } }
    end

    assert_redirected_to consult_url(Consult.last)
  end

  test "should show consult" do
    get consult_url(@consult)
    assert_response :success
  end

  test "should get edit" do
    get edit_consult_url(@consult)
    assert_response :success
  end

  test "should update consult" do
    patch consult_url(@consult), params: { consult: { consult_time: @consult.consult_time, material_cost: @consult.material_cost, material_used: @consult.material_used, staff_id: @consult.staff_id, study_id: @consult.study_id, wait_time: @consult.wait_time } }
    assert_redirected_to consult_url(@consult)
  end

  test "should destroy consult" do
    assert_difference('Consult.count', -1) do
      delete consult_url(@consult)
    end

    assert_redirected_to consults_url
  end
end
