
require 'spec_helper'

describe InputData do
  it "should instantiate a new object when comma delimited" do
    raw_comma_data = InputData.new("spec/fixtures/comma_delimited.txt", ",")
    raw_comma_data.should be_a_kind_of(InputData)
  end

  it "should instantiate a new object when pipe delimited" do
    raw_pipe_data = InputData.new("spec/fixtures/pipe_delimited.txt", "|")
    raw_pipe_data.should be_a_kind_of(InputData)
  end

  it "should instantiate a new object when space delimited" do
    raw_space_data = InputData.new("spec/fixtures/space_delimited.txt", " ")
    raw_space_data.should be_a_kind_of(InputData)
  end

  it "should parse comma delimited data" do
    raw_comma_data = InputData.new("spec/fixtures/comma_delimited.txt", ",")
    parsed_data = raw_comma_data.parsed
    expect(parsed_data.first).to include first_name: "Neil"
  end

  it "should parse pipe delimited data" do
    raw_pipe_data = InputData.new("spec/fixtures/pipe_delimited.txt", "|")
    parsed_data = raw_pipe_data.parsed
    expect(parsed_data.first).to include first_name: "Steve"
  end

  it "should parse space delimited data" do
    raw_space_data = InputData.new("spec/fixtures/space_delimited.txt", " ")
    parsed_data = raw_space_data.parsed
    expect(parsed_data.first).to include first_name: "Anna"
  end
end
