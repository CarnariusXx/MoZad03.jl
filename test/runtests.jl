using MoZad03
using Test

@testset "testy " begin

	funk,xL,xU = x->x^2,-400,400
	@test zad22(funk,xL,xU) == (0,0)
	
	funk,xL,xU = x->sin(x),0.1,pi
	@test zad22(funk,xL,xU) == (0.0,3.14)
	
	funk,xL,xU = x->x^6+x^4+x^5+x^2+x ,-2, 2
	@test zad22(funk,xL,xU) == (-0.21,-0.34)
	
end
