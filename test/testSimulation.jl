using Test
using Argon

@testset "Simulation" begin
    s = Simulation()
    @test s isa Simulation
    @test [s.L s.dt s.tf] == [0.0 0.0 0.0]
    @test s.particles == []

    particle1 = Particle(4., 5., 1., 0.)
    particle2 = Particle(6., 5., 1., 0.)
    s2 = Simulation(10., 0.1, 1, [particle1, particle2])
    @test s2 isa Simulation
    @test [s2.L s2.dt s2.tf] == [10. 0.1 1]
    @test s2.particles == [particle1, particle2]
end
