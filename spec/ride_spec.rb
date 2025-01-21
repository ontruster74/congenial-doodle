require './spec/spec_helper'

describe Ride do
  

pry(main)> require './lib/visitor'
#=> true

pry(main)> require './lib/ride'
#=> true

pry(main)> ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
#=> #<Ride:0x000000015a136ab8 @admission_fee=1, @excitement=:gentle, @min_height=24, @name="Carousel", @rider_log={}>

pry(main)> ride1.name
#=> "Carousel"

pry(main)> ride1.min_height
#=> 24

pry(main)> ride1.admission_fee
#=> 1

pry(main)> ride1.excitement
#=> :gentle

pry(main)> ride1.total_revenue
#=> 0

pry(main)> visitor1 = Visitor.new('Bruce', 54, '$10')
#=> #<Visitor:0x000000015a16e918 @height=54, @name="Bruce", @preferences=[], @spending_money=10>

pry(main)> visitor2 = Visitor.new('Tucker', 36, '$5')
#=> #<Visitor:0x000000015a11c5c8 @height=36, @name="Tucker", @preferences=[], @spending_money=5>

pry(main)> visitor1.add_preference(:gentle)

pry(main)> visitor2.add_preference(:gentle)

pry(main)> ride1.board_rider(visitor1)

pry(main)> ride1.board_rider(visitor2)

pry(main)> ride1.board_rider(visitor1)

pry(main)> ride1.rider_log
#=> {#<Visitor:0x000000015a16e918 @height=54, @name="Bruce", @preferences=[:gentle], @spending_money=8> => 2,
 #<Visitor:0x000000015a11c5c8 @height=36, @name="Tucker", @preferences=[:gentle], @spending_money=4> => 1}

pry(main)> visitor1.spending_money
#=> 8

pry(main)> visitor2.spending_money
#=> 4

pry(main)> ride1.total_revenue
#=> 3

pry(main)> visitor3 = Visitor.new('Penny', 64, '$15')
#=> #<Visitor:0x0000000159a852a0 @height=64, @name="Penny", @preferences=[], @spending_money=15>

pry(main)> ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
#=> #<Ride:0x0000000159a0cd00 @admission_fee=5, @excitement=:gentle, @min_height=36, @name="Ferris Wheel", @rider_log={}>

pry(main)> ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })
#=> #<Ride:0x0000000159ae7a68 @admission_fee=2, @excitement=:thrilling, @min_height=54, @name="Roller Coaster", @rider_log={}>

pry(main)> visitor2.add_preference(:thrilling)
#=> [:gentle, :thrilling]

pry(main)> visitor3.add_preference(:thrilling)
#=> [:thrilling]

pry(main)> ride3.board_rider(visitor1)

pry(main)> ride3.board_rider(visitor2)

pry(main)> ride3.board_rider(visitor3)

pry(main)> visitor1.spending_money
#=> 8

pry(main)> visitor2.spending_money
#=> 4

pry(main)> visitor3.spending_money
#=> 13

pry(main)> ride3.rider_log
#=> {#<Visitor:0x0000000159a852a0 @height=64, @name="Penny", @preferences=[:thrilling], @spending_money=13> => 1}

pry(main)> ride3.total_revenue
#=> 2

end