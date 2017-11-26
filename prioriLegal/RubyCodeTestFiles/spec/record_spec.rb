require 'spec_helper'

describe Record do
  it "should respond to specific attributes if comma delimited" do
    comma_data = InputData.new("spec/fixtures/comma_delimited.txt", ",")
    record = Record.new(comma_data.parsed.first)
    record.first_name.should == "Neil"
  end

  it "should respond to specific attributes if pipe delimited" do
    pipe_data = InputData.new("spec/fixtures/pipe_delimited.txt", "|")
    record = Record.new(pipe_data.parsed.first)
    record.first_name.should == "Steve"
  end

  it "should respond to specific attributes if space delimited" do
    space_data = InputData.new("spec/fixtures/space_delimited.txt", " ")
    record = Record.new(space_data.parsed.first)
    record.first_name.should == "Anna"
  end

  it "should sanitize gender strings" do
    raw_data = {gender: "M"}
    record = Record.new(raw_data)
    record.gender.should == "Male"
  end

  it "should sanitize date strings" do
    raw_data = {date_of_birth: "11-25-1989"}
    record = Record.new(raw_data)
    record.date_of_birth.should == "11/25/1989"
  end
end
