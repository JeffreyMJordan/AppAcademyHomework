def sluggish_octopus(arr)
  biggest = -1.0/0.0 
  arr.each do |el1| 
    arr.each do |el2| 
      if el1.length>el2.length 
        biggest = el1 
      end
    end
  end
  biggest
end

def dominant_octopus(arr)
  merge_sort(arr).last
end

def merge_sort(arr)
  return arr if arr.length<=1
  mid = arr.length/2 
  left = arr.take(mid)
  right = arr.drop(mid)

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  res = []
  until left.empty? or right.empty? 
    if left.first.length<right.first.length 
      res << left.shift
    else 
      res << right.shift 
    end
  end
  res.concat(left).concat(right) 
end

def clever_octopus(arr)
  biggest = -1.0/0.0 
  biggest_el = nil
  arr.each do |el| 
    if el.length>biggest 
      biggest = el.length 
      biggest_el = el 
    end
  end
  biggest_el
end

def slow_dance(dir, arr)
  arr.each_with_index do |el, idx| 
    return idx if el==dir
  end
end

def fast_dance(dir, hash)
  hash[dir]
end








