export Particle

mutable struct Particle
    x::Float64
    y::Float64
    vx::Float64
    vy::Float64
end

function Particle()
    return Particle(0,0,0,0)
end