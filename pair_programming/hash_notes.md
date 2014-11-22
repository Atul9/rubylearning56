# Learning about HashT

Initializing a new Hash
    doctest: Initialize a hash
    >> Hash.new
    => {}

When a key doesn't exist, Hash returns nil.  It is the default.

    doctest: key 1 does not exist
    >> Hash.new[1].nil?
    => true

I can set the default to be something else.  Actually, there are two
ways to do so.

    doctest: the ways to set Hash's default value for nonexistant key
    >> my_hash = {}
    >> my_hash.default = "You haven't set that key yet!"
    >> my_hash[1]
    => "You haven't set that key yet!"
    >> my_other_hash = Hash.new("Still haven't set the key yet!")
    >> my_other_hash[1]
    => "Still haven't set the key yet!"
    >> my_other_hash[1] = 'now defined'
    => 'now defined'

I can use just about any object for the index.  Let's see how that works
here.

    doctest: Different objects as keys
    >> my_hash = {1 => 'an integer', 2.5 => 'a float', "a string" => "a string", Object => 'a class'}
    >> my_hash[Object]
    => 'a class'
    >> my_hash[2.5]
    => 'a float'
    >> my_hash[1]
    => 'an integer'
    >> my_hash['a string']
    => 'a string'

Hash has some good methods for manipulating its values.  Merge is one of
those nice methods.

    doctest: Merging two hashes
    >> squares ={1 =>1, 2 => 4}
    >> cubes = {3 => 27}
    >> squares.merge(cubes)
    => {1=>1, 2=>4, 3=>27}


Deleting elements from a hash
    doctest: Deleting elements from hash
    >> h = {1 => 'one', 2 => 'two'}
    >> h.delete(1)
    => 'one'
    >> h
    => {2 => 'two'}

I can push and pop (I think)

    doctest: Does push and pop and shift exist for hash?
    >> Hash.instance_methods.include? :shift
    => true
    >> Hash.instance_methods.include? :pop
    => false
    >> Hash.instance_methods.include? :push
    => false
    >> Hash.instance_methods.include? :unshift
    => false

Shift remotes the key and value and presents it as an array.

    .
S  Delete looks like it only gives you the value.

    doctest: Shift method and select method
    >> h = Hash.new
    >> h = {1 => 'one', 2 => 'two', a: 1,b: 2}
    >> h.shift
    => [1,"one"]
    >> h
    => {2=>"two",:a=>1, :b=>2}
    >> h.size
    => 3
    >> h.keys
    => [2,:a, :b]
    >> h.rehash
    => {2=>"two",:a=>1, :b=>2}
    >> h.select {|k| h[k] == 'two' }
    => {2=> "two"}

A hash is not mutable right?
Once defined we cannot add more key and values to it. I think. What do
you think?
