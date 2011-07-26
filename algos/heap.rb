def sift(start, count)
  root = start
  while (root * 2) + 1 < count
    child = (root * 2) + 1
    if child < (count - 1) && array[child] < array[child + 1]
      child += 1
    end
    compare(root, child)
    if array[root] < array[child]
      swap(root, child)
      root = child
    else
      return
    end
  end
end

def heapsort
  start = array.length / 2 - 1
  finish = array.length - 1
  while start >= 0
    sift(start, array.length)
    start -= 1
  end
  while finish > 0
    swap(finish, 0)
    sift(0, finish)
    finish -= 1
  end
end
