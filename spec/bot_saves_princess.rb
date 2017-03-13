require_relative '../lib/save_princess.rb'
require_relative '../lib/battle_field.rb'
require 'minitest/autorun'
require 'stringio'

module Kernel
  def capture_stdout
    out = StringIO.new
    $stdout = out
    yield
    return out
  ensure
    $stdout = STDOUT
  end
end

describe "#SavePrincess" do
  describe "#next_move" do

    puts "test_can_output_next_move_for_peach_above_mario"
    it "test_can_output_next_move_for_peach_above_mario" do
      out  = capture_stdout do
        SavePrincess.new.next_move(3, 1, 1, ["-p-", "-m-", "---"])
      end

      expect("UP\n").to eq(out.string)
    end

    puts "test_can_output_next_move_for_peach_below_mario"
    it "test_can_output_next_move_for_peach_below_mario" do
      out  = capture_stdout do
        SavePrincess.new.next_move(5, 2, 1, ["-----",
                                             "-----",
                                             "-m---",
                                             "-----",
                                             "p----"])
      end

      expect("LEFT\n").to eq(out.string)
    end

    puts "test_can_output_next_move_for_peach_left_of_mario"
    it "test_can_output_next_move_for_peach_left_of_mario" do
      out  = capture_stdout do
        SavePrincess.new.next_move(5, 2, 3, ["-----",
                                             "-----",
                                             "p--m-",
                                             "-----",
                                             "-----"])
      end

      expect("LEFT\n").to eq(out.string)
    end

    puts "test_can_output_next_move_for_peach_right_of_mario"
    it "test_can_output_next_move_for_peach_right_of_mario" do
      out  = capture_stdout do
        SavePrincess.new.next_move(5, 2, 1, ["-----",
                                             "-----",
                                             "-m--p",
                                             "-----",
                                             "-----"])
      end

      expect("RIGHT\n").to eq(out.string)
    end

    it "test_should_accept_integer_between_1_and_100" do
      battle_field = BattleField.new
      battle_field.size = 140
      expect(battle_field.validate_size).to eq("Enter Number Only between 1 and 100. Try again!")
    end
  end
end
