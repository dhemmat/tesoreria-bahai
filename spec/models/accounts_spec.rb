require "rails_helper"

RSpec.describe Account, :type => :model do
  context 'validations' do
    before { FactoryGirl.build(:account)}

    it { should validate_presence_of :name }
    it { should ensure_inclusion_of(:account_type).in_array(["fondo","entidad","cuenta"])}
  end
end
