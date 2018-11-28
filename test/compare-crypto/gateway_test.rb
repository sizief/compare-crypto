require "test_helper"

class GatewayTest < Minitest::Test
  def setup
    source = 'BTC'
    target = 'USD'
    @gateway = ::CompareCrypto::Gateway.new({source: source, target: target})
    @price_path = "price?fsym=#{source}&tsyms=#{target}"
    stub_request(:get, "https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD").
  with(
    headers: {
	  'Accept'=>'*/*',
	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
	  'User-Agent'=>'Ruby'
    }).
  to_return(status: 200, body: "", headers: {})
  end
  
  def test_create_object
    assert @gateway.is_a? CompareCrypto::Gateway
  end

  def test_prepare_url
    assert @gateway.prepare_url(@price_path).is_a? URI::HTTP
  end

  def test_send
    url = @gateway.prepare_url(@price_path)
    response = @gateway.send :send_request, url
    assert response.code == 200
  end

  def test_get_price
    response = @gateway.get_price
    assert response.is_a? Hash
    assert_equal response[:code], 200
    refute_nil response[:body]
  end
  
end
