require 'rails_helper'

RSpec.describe "data_keagamaan_katolik/index", type: :view do
  before(:each) do
    assign(:data_keagamaan_katolik, [
      DataKeagamaanKatolik.create!(
        :judul => "Judul",
        :keterangan => "Keterangan",
        :pengguna => nil
      ),
      DataKeagamaanKatolik.create!(
        :judul => "Judul",
        :keterangan => "Keterangan",
        :pengguna => nil
      )
    ])
  end

  it "renders a list of data_keagamaan_katolik" do
    render
    assert_select "tr>td", :text => "Judul".to_s, :count => 2
    assert_select "tr>td", :text => "Keterangan".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
