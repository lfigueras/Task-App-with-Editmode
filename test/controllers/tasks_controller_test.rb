require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers
    setup do
        get '/users/sign_in'
        sign_in users(:one)
        post new_user_session_url
        @category = Category.create(name: 'Sample1', description: 'Description')
        @task = Task.create(title: 'Sample1', details: 'More Details',  category_id: @category.id, set_date: "2020-12-02", user_id: @one.id)
    
    end

    test "should get new" do
        get new_category_task_url(@task)
        assert_response :success
      end
    
    test "should post create task" do
        post category_tasks_url(:category_id), params:{task:{title: 'Sample', details: 'Some long details', category_id: @category.id, set_date: "2020-12-02"} }
        assert_response :redirect
    end

    test "should get edit task" do
        get  edit_task_url(@task)
        assert_response :success
    end

    test "should update task" do
        patch update_task_url(@task), params: { task: { title: "update name updated", details: "update details updated",  category_id: @category.id, set_date: "2020-12-02"} } 
        assert_response :redirect
    end

    test 'should delete task' do
        task = Task.find_by(title:@task.title)
        assert_difference "Task.count", -1 do
          delete category_task_path(task, @task)
        end
      end
    
end
