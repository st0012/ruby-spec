require_relative '../../spec_helper'

describe "Refinement#include" do
  ruby_version_is "3.1" do
    it "warns about deprecation" do
      Module.new do
        refine String do
          -> {
            include Module.new
          }.should complain(/warning: Refinement#include is deprecated and will be removed in Ruby 3.2/)
        end
      end
    end
  end
end
