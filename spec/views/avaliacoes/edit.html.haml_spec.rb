require 'rails_helper'

RSpec.describe "avaliacoes/edit", :type => :view do
  before(:each) do
    @avaliacao = assign(:avaliacao, Avaliacao.create!(
      :positiva => "MyString",
      :negativa => "MyString",
      :usuario => nil,
      :cidade => nil,
      :lugar => nil
    ))
  end

  it "renders the edit avaliacao form" do
    render

    assert_select "form[action=?][method=?]", avaliacao_path(@avaliacao), "post" do

      assert_select "input#avaliacao_positiva[name=?]", "avaliacao[positiva]"

      assert_select "input#avaliacao_negativa[name=?]", "avaliacao[negativa]"

      assert_select "input#avaliacao_usuario_id[name=?]", "avaliacao[usuario_id]"

      assert_select "input#avaliacao_cidade_id[name=?]", "avaliacao[cidade_id]"

      assert_select "input#avaliacao_lugar_id[name=?]", "avaliacao[lugar_id]"
    end
  end
end
