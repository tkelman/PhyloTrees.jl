type PhyloTrace
  substitution_model::Vector{SubstitutionModel}
  tree::Vector{Tree}
end


type PhyloIteration
  substitution_model::SubstitutionModel
  tree::Tree
end


PhyloProposal = PhyloIteration


function push!(trace::PhyloTrace, iteration::PhyloIteration)
  push!(trace.substitution_model, iteration.substitution_model)
  push!(trace.tree, iteration.tree)
end


function append!(trace1::PhyloTrace, trace2::PhyloTrace)
  append!(trace1.substitution_model, trace2.substitution_model)
  append!(trace1.tree, trace2.tree)
end
