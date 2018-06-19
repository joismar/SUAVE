require 'rails_helper'

RSpec.describe Stat, type: :model do
  context "Visualizar dados estatísticos"

    it "Dados enviados corretamente pela API" do
      estatisticas = Stat.new
      expect(estatisticas).to be_valid
    end
end
