require_relative 'my_solution' 
require_relative 'state_data'

describe VirusPredictor do 
  let(:state) { VirusPredictor.new("Alabama", 94.64, 4822023) } 

  it "determines the number of deaths based on population_density" do 
    expect(state.predicted_deaths).to eq 482202
  end
  
end