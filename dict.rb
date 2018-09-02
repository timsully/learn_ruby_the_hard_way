# Collection of methods and constants
module Dict
  # Creating a new instance of the module Dict and in
  # the parameters variable num_buckets is set equal
  # to the integer value of 256.
  def Dict.new(num_buckets=256)
    # The variable aDict is assigned to an empty array
    aDict = []
    # Using a for loop that includes iterating through
    # every value of num_buckets from 0 to 256 with
    # the .each method and uses the argument i to pass
    # values into it as a bucket as it pushes each
    # value when iterated(looped) and pushes that value
    # in the aDict array
    (0...num_buckets).each do |i|
      aDict.push([])
    # End of the for-loop
    end
    # When the for-loop is complete it will return the aDict array
    return aDict
  # End of Dict.new
  end

  # Calling the method .hash_key on the Module Dict,
  # .hash_key uses the built in Ruby hash function
  # to convert a string to a number(integer?). Also,
  # passing in two arguments aDict and key
  def Dict.hash_key(aDict, key)
    # Given a key this will create a number and then convert it to
    # an integer(index) for the aDict's buckets.
    # Returns the number for the key and grabs the
    # length of the array and uses the modulus(%)
    # operator to find the remaining bucket/slots
    # whatever you want to call it to see if it can
    # store it in num_buckets?
    return key.hash % aDict.length
  # End of function
  end

  # Calling the method .get_bucket on the Module Dict
  # .get_bucket having the arguments in the parameters
  # which are aDict and key
  def Dict.get_bucket(aDict, key)
    # Given a key, find the bucket where it would go.
    # Assigning the value Dict.hash_key(aDict, key)
    # equal to bucket_id which uses the integer value
    # to find the bucket a key could be in.
    bucket_id = Dict.hash_key(aDict, key)
    # Returns the bucket_id inside aDict array,
    # if no value found, return nil? (not exactly sure)
    return aDict[bucket_id]
  # End of function
  end

  # Calling the method .get_slot on the Module Dict,
  # with the parameters being, aDict, key, default=nil
  def Dict.get_slot(aDict, key, default=nil)
    # Returns the index, key, and value of a slot found in a bucket.
    # Assigning Dict.get_bucket(aDict, key) equal to bucket
    # gets a bucket where the key could be
    bucket = Dict.get_bucket(aDict, key)

    # Assigning the method .each_with_index to
    # bucket which calls the block with two args
    # the item and its index, the given arguments
    # are passed throught to .each `kv` being a
    # lists of pairs of values and `i` being the index?
    bucket.each_with_index do |kv, i|
      # k for key and v for value
      k, v = kv
      # If key is equal to l then return return each
      # arguments value
      if key == l
        return i, k, v
      # End of if statement
      end
    # End of loop function
    end

    # Return -1, key, and default?
    return -1, key, default
  # End of function
  end

  # Assigning the method .get(arg1, arg2, arg3) to the Module Dict
  def Dict.get(aDict, key, default=nil)
    # Gets the value in a bucket for the given key, or the default.
    # With the slot given to us from the Dict.get_slot function
    # we can then return the variable and its value that we want
    i, k, v = Dict.get_slot(aDict, key, default=default)
    # Returns the v(value) only
    return v
  # End of function
  end

  # Assigning the .set method on the Module Dict
  def Dict.set(aDict, key, value)
    # Sets the key to the value, replacing any existing value.
    bucket = Dict.get_bucket(aDict, key)
    i, k, v = Dict.get_slot(aDict, key)

    # If i is greater than or equal to 0 the bucket
    # index value is equal to the array [key, value]
    if i >= 0
      bucket[i] = [key, value]
    else
      # Otherwise push [key, value] array to bucket
      bucket.push([key, value])
    # End if-else statement
    end
  # End of function
  end

  # Assigning the .delete method to the Dict module
  # which has two params aDict being the array and
  # key which would be the int value to find what
  # to delete from the aDict array?
  def Dict.delete(aDict, key)
    # Deletes the given key from the Dict.
    bucket = Dict.get_bucket(aDict, key)

    # This for loop uses the .each method to iterate
    # through the bucket.length array from beginning
    # to end inclusively
    (0....bucket.length).each do |i|
      # k(key) and v(value) is assigned to bucket[i]
      # which is the value that is iterated each time when
      # looped, think of `k, v` being [key, value] when being
      # stored or deleted into the aDict array breh
      k, v = bucket[i]
      # If key is equal to k(key) then delete that sucker
      if key == k
        bucket.delete_at(i)
        # Breaks loop once it deletes the index int
        # value at its specific location once found
        # through the bucket.length if-statement/loop
        break
      # End of if-statement
      end
    # End of loop
    end
  # End of function
  end

  # The .list method is assigned to the Dict Module
  # which as the aDict array in the parameters as
  # its argument
  def Dict.list(aDict)
    # Prints out what's in the Dict.
    # Iterates through each element in the aDict array
    aDict.each do |bucket|
      # If bucket display the output of each element
      # as a string
      if bucket
        bucket.each {|k, v| puts k, v}
      # End of if-statement
      end
    # End of loop
    end
  # End of function
  end
# End of Module
end
