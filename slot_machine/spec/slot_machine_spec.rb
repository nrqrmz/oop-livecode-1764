require_relative '../slot_machine'

def test_scenario(reels, value)
  it "return #{value} when #{reels.join(' | ')}" do
    slot_machine = SlotMachine.new(reels)
    score = slot_machine.score
    expect(score).to eq(value)
  end
end


describe SlotMachine do
  describe '#score' do
    test_scenario(%w[joker joker joker], 50)
    test_scenario(%w[star star star], 40)
    test_scenario(%w[bell bell bell], 30)
    test_scenario(%w[seven seven seven], 20)
    test_scenario(%w[cherry cherry cherry], 10)

    test_scenario(%w[joker joker star], 25)
    test_scenario(%w[joker joker bell], 25)
    test_scenario(%w[joker joker seven], 25)
    test_scenario(%w[joker joker cherry], 25)

    test_scenario(%w[star star joker], 20)
    test_scenario(%w[bell bell joker], 15)
    test_scenario(%w[seven seven joker], 10)
    test_scenario(%w[cherry cherry joker], 5)

    test_scenario(%w[joker star bell], 0)
  end
end
