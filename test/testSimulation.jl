using Test
using Argon

@testset "Simulation" begin
    s = Simulation()
    @test s isa Simulation
    @test s.L == 0.0
    @test s.particles == []
end
