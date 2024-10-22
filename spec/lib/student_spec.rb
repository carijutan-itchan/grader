RSpec.describe Student do

  context 'when student attributes are provided' do
    let(:student) { described_class.new(first_name:, last_name:, age:, math:, english:, physics:) }
    let(:first_name) { 'christian' }
    let(:last_name) { 'baman' }
    let(:age) { 27 }
    let(:math) { 75 }
    let(:english) { 65 }
    let(:physics) { 90 }

    it 'returns valid student' do
      expect(student).to have_attributes(
        first_name: "christian",
        last_name: "baman",
        age: 27,
        english: 65,
        math: 75,
        physics: 90
      )
    end

    it 'can calculate the grades average' do
      expect(student.average).to eq 76
    end

    describe '#full_name' do
      it 'returns full name of student' do
        expect(student.full_name).to eq "christian baman"
      end
    end
  end

  context 'when student attributes are NOT provided' do
    it 'raise an ArgumentError ' do
      expect { Student.new }.to raise_error(ArgumentError, "missing keywords: :first_name, :last_name, :age, :english, :math, :physics")
    end
  end
end
