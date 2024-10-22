RSpec.describe Grader do

  context 'when file is provided' do
    let(:file) { File.open("./files/grades.csv") }
    let(:subject) { described_class.new(file) }

    before { subject.parse_student }

    it "contains the correct number of students" do
      expect(subject.students.size).to eq 3
    end

    it "has the correct first_names" do
      expect(subject.students.map(&:first_name)).to match_array(["Billy", "Omar", "Ashley"])
    end

    it "has the correct last_names" do
      expect(subject.students.map(&:last_name)).to match_array(["Joel", "Hassan", "Bubble"])
    end

    it "has the correct ages" do
      expect(subject.students.map(&:age)).to match_array(["14", "15", "15"])
    end

    it "has the correct math grades" do
      expect(subject.students.map(&:math)).to eq(["88", "98", "90"])
    end

    it "has the correct english grades" do
      expect(subject.students.map(&:english)).to eq(["92", "78", "85"])
    end

    it "has the correct physics grades" do
      expect(subject.students.map(&:physics)).to eq(["85", "95", "91"])
    end

    it "has the correct average grades" do
      expect(subject.students.map(&:average)).to eq([88, 90, 88])
    end
  end

  context 'when file NOT provided' do
    it 'raise an ArgumentError ' do
      expect { Grader.new }.to raise_error(ArgumentError)
    end
  end
end
