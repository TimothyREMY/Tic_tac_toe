require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'
require 'board'

  my_game = Game.new
  
  my_game.introduction

  

