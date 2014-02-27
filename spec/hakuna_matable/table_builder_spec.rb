require 'spec_helper'

describe "HakunaMatable::TableBuilder" do
  before do
    Timecop.freeze Date.new(2012, 12, 12)
  end

  after do
    Timecop.return
  end

  describe "#table_for" do
    let(:products) { [FactoryGirl.build_stubbed(:product)] }

    subject{ HakunaMatable::TableBuilder.new }

    it "renders a table for a collection" do
      expect(subject.table_for(products)).to eq <<END
<table>
  <thead>
    <th>id</th>
    <th>name</th>
    <th>description</th>
    <th>size</th>
    <th>price</th>
    <th>expires_at</th>
    <th>created_at</th>
    <th>updated_at</th>
  </thead>
  <tbody>
    <tr>
      <td>1001</td>
      <td>MyString</td>
      <td>MyText</td>
      <td>1</td>
      <td>9.99</td>
      <td>2014-02-25 00:49:05 UTC</td>
      <td>2012-12-12 00:00:00 UTC</td>
      <td></td>
    </tr>
  </tbody>
</table>
END
    end

    context "passing :filter" do
      it "displays only the fields passed" do
        expect(subject.table_for(products, fields: [:name] )).to eq <<END
<table>
  <thead>
    <th>name</th>
  </thead>
  <tbody>
    <tr>
      <td>MyString</td>
    </tr>
  </tbody>
</table>
END
      end
    end
  end
end
