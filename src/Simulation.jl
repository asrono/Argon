export Simulation

mutable struct Simulation
    L::Float64 # length of the box
    particles::Vector{Particle} # particles in the box
end

function Simulation()
    return Simulation(0.,[])
end