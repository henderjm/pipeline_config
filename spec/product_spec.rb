require_relative '../lib/product'

RSpec.describe Product do
  let(:product) do
    Product.new(
      File.join(__dir__, 'product.csv'), File.join(__dir__, 'config.yml')
    )
  end

  context 'params' do
    it 'should be initializable' do
      expect { product }.not_to raise_error
    end
  end

  describe 'mapping' do
    context 'product' do
      it 'can find new name property' do
        expect(product.find_property('product-name')).to eq('prop')
      end
    end
  end
end
