require "rubygems"
require 'test/unit'
require 'rack/test'
require File.expand_path(File.join('..', '..', 'lib', 'stumble_score'), __FILE__)
require File.expand_path(File.join('..', '..', 'lib', 'cli'), __FILE__)
require File.expand_path(File.join('..', '..', 'lib', 'web'), __FILE__)

ENV['RACK_ENV'] = 'test'

module LocationFixtures
  if ! (LOADED rescue false)
    
    CHESTNUT_HILL                 = "19118"
    CHESTNUT_HILL_BAR_COUNT       = 9
    CHESTNUT_HILL_SCORE           = 45.0
    CHESTNUT_HILL_CLASSIFICATION  = "Tipsy"
    CHESTNUT_HILL_BAR             = "Towey's Tavern"
    PAOLI                         = "19301"
    PAOLI_BAR_COUNT               = 5
    PAOLI_SCORE                   = 25.0
    PAOLI_CLASSIFICATION          = "Dry"
    PAOLI_BAR                     = "The Great American Pub"
    RITTENHOUSE                   = "19103"
    RITTENHOUSE_BAR_COUNT         = 20
    RITTENHOUSE_SCORE             = 100.0
    RITTENHOUSE_CLASSIFICATION    = "Sloppy"
    RITTENHOUSE_BAR               = "Drinker's Pub"

    LOADED = true
  end
end

