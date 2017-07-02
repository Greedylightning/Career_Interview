class MinHeap

    def initialize(size)
        maxSize = size
        size = 0
        heap = Array.new size, 0
    end

    def leftchild(pos)
        pos * 2 + 1
    end

    def rightchild(pos)
        pos * 2 + 2
    end

    def parent(pos)
        (pos - 1) / 2
    end

    def swap(pos1, pos2)
        temp = heap[pos1]
        heap[pos1] = heap[pos2]
        heap[pos2] = temp
    end

    def isLeaf(pos)
        pos >= size / 2 && pos <= size
    end

    def insert(val)
        size += 1
        heap[size] = val
        current = size
        while current >= 0 && heap[current] < heap[parent(current)]
            swap current, parent(current)
            current = parent(current)
        end
    end

    def removeMin
        swap 0, size
        size -= 1
        pushdown(0)
    end

    def pushdown(pos)
        until isLeaf(pos)
            lchild = leftchild(pos)
            if lchild <= size && heap[lchild] > heap[lchild + 1] then lchild += 1 end
            if heap[pos] > heap[lchild]
                swap lchild, pos
                pos = lchild
            end
        end
    end
end