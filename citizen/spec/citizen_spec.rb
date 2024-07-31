require_relative '../citizen'

describe Citizen do
  describe '#can_vote?' do
    it 'return true if citizen is at least 18 years old' do
      citizen = Citizen.new('Thorfinn', 'Karlsefni', 19)
      expect(citizen.can_vote?).to eq(true)
    end

    it 'return false if citizen is younger than 18 years old' do
      citizen = Citizen.new('Regan', 'MacNeil', 12)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'return the first name and the last name joined together' do
      citizen = Citizen.new('Yukihiro', 'Matsumoto', 59)
      expect(citizen.full_name).to eq('Yukihiro Matsumoto')
    end

    it 'return the full name in the proper format' do
      citizen = Citizen.new('yukiHIRo', 'matSUMoto', 59)
      expect(citizen.full_name).to eq('Yukihiro Matsumoto')
    end
  end
end
