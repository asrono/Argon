#!/usr/bin/env julia
using Test
using Argon

@testset "Argon simulation" begin
    @testset "Particle" begin
        p1 = Particle(0,0,0,0)
        @test p1 isa Particle
    end
end