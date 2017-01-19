require_relative '../lib/configurer'

RSpec.describe Configurer do
  let(:configurer) { Configurer.new }
  describe 'configurer' do
    context 'redis' do
      it 'should connect to redis labs db endpoint' do
        expect { configurer.open_db }.not_to raise_error
      end
      context 'when modifying redis database' do
        after(:each) do
          configurer.ensure_database_is_clean
        end
        it 'should add key value to db' do
          expect { configurer.add('first_key', 'first_value') }.not_to raise_error
        end
      end
    end
  end
end
