def merge_sort(array)
  puts "merging #{array}"
  if array.size < 2
    puts "Hit base condition with #{array}"
    return array
  else
    puts "Slicing #{array}"
    mid = (array.size/2).floor
    l = array.slice(...mid)
    puts "Left slice = #{l}"
    r = array.slice(mid..)
    puts "Right slice = #{r}"

    puts "Calling merge sort on sub arrays #{l} and #{r}"
    l = merge_sort(l)
    r = merge_sort(r)
    merge(l, r)
  end
end

def merge(l, r, array = [])
  puts "l = #{l}"
  puts "r = #{r}"
  puts "array = #{array}"
  puts "merge called with #{l} and #{r}"
  (l.size + r.size).times do
    if l.empty?
      puts "l is empty"
      array << r.shift
      puts "New array = #{array}"
    elsif r.empty?
      puts "r is empty"
      array << l.shift
      puts "New array = #{array}"
    else
      if l.first < r.first
        puts "#{l} is less than #{r}"
        array << l.shift
        puts "New array = #{array}"
      elsif r.first < l.first
        puts "#{r} is less than #{l}"
        array << r.shift
        puts "New array = #{array}"
      else
        array << l.shift
        puts "New array = #{array}"
      end
    end
  end
  array
end


puts merge_sort([8,4,6,1])
