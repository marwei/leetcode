Dir[File.dirname(__FILE__) + '/tree/*.rb'].each { |file| require_relative file }
class Tree
  extend PrintTree
  extend BuildTree
  extend TraverseTree
end