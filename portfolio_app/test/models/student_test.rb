require "test_helper"

class StudentTest < ActiveSupport::TestCase
    test "Should rise error when the email is not unique." do
      assert_raises ActiveRecord::RecordInvalid do
        Student.create!(first_name: "TEST", last_name: "TEST", school_email: "dwiggin7@msudenver.edu", major: "TEST", expected_graduation_date: "2024-09-20")
      end
    end
    test "Should rise error when the email is not ending in @msudenver.edu" do
      assert_raises ActiveRecord::RecordInvalid do
        Student.create!(first_name: "TEST", last_name: "TEST", school_email: "dwiggins@gmail.edu", major: "TEST", expected_graduation_date: "2024-09-20")
      end
    end
    test "Should rise error when any field is empty." do
      assert_raises ActiveRecord::RecordInvalid do
        Student.create!(first_name: "TEST", last_name: "TEST", school_email: "dwiggin@gmail.edu", major: "TEST", expected_graduation_date: "2024-09-20")
      end
    end
    
    
end
