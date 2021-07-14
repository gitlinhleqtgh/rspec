class ClassRoom
    def initialize students
        @students = students
    end
    def list_student_names
        @students.map(&:name).join(", ")
    end
    def total_tuition
       @students.map(&:tuition).reduce{|sum, x| sum + x}
    end
end

describe ClassRoom do
    it "the list_student_names method should work correctly" do
        std1 = double("student")
        std2 = double("student")

        allow(std1).to receive(:name) { "John" }
        allow(std1).to receive(:tuition) {100}
        allow(std2).to receive(:name) { "Jack" }
        allow(std2).to receive(:tuition) {100}
        cr = ClassRoom.new [std1, std2]
        expect(cr.list_student_names).to eq("John, Jack")
        expect(cr.total_tuition).to eq(200)
    end
end