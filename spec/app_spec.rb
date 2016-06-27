require('rspec')
require('app')

describe('Fixnum#ping_pong') do
  it('counts up to the provided number') do
    expect((2).ping_pong()).to(eq([0,1,2]))
  end
  it('replaces multiples of 3 with the word "ping"') do
    expect((3).ping_pong()).to(eq([0,1,2,'ping']))
  end
  it('replaces multiples of 5 with the word "pong"') do
    expect((5).ping_pong()).to(eq([0,1,2,'ping',4,'pong']))
  end
  it('replaces multiples of 5 with the word "pong"') do
    expect((15).ping_pong()).to(eq([0,1,2,'ping',4,'pong','ping',7,8,'ping','pong',11,'ping',13,14,'pingpong']))
  end
end
