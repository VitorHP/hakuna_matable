require 'spec_helper'

describe "HakunaMatable::TableBuilder" do
  describe "#table_for" do
    let(:products) { [FactoryGirl.build_stubbed(:product)] }

    subject{ HakunaMatable::TableBuilder.new }

    it "renders a table for a collection" do
      expect(subject.table_for(products)).to eq "<table><thead><th>id</th><th>name</th><th>description</th><th>size</th><th>price</th><th>expires_at</th><th>created_at</th><th>updated_at</th></thead><tbody><tr><td>1001</td><td>MyString</td><td>MyText</td><td>1</td><td>9.99</td><td>2014-02-25 00:49:05 UTC</td><td></td><td></td></tr></tbody></table>"
    end

    context "passing :filter" do
      it "displays only the fields passed" do
        expect(subject.table_for(products, fields: [:name] )).to eq "<table><thead><th>name</th></thead><tbody><tr><td>MyString</td></tr></tbody></table>"
      end
    end
  end
end
