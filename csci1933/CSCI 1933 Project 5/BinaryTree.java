import java.util.Stack;
public class BinaryTree<K extends Comparable<K>, V> {
    private Node<K, V> root;
    public BinaryTree(Node root)
    {
        this.root = root;
    }

    public Node<K, V> getRoot()
    {
        return this.root;
    }

    /**
     *
     * @param key key of the node to be added
     * @param value value of the node to be added
     */
    public void add(K key, V value)
    {
        Node<K,V> current = root;
        boolean done = false;
        if (root == null)
        {
            root = new Node(key,value);
            done = true;
        }
        while(!done)
        {
            if (current.getKey().compareTo(key) > 0)
            {
                if (current.getLeft() == null)
                {
                    current.setLeft(new Node(key, value));
                    done = true;
                }
                else
                {
                    current = current.getLeft();
                }
            }
            else if (current.getKey().compareTo(key)<0)
            {
                if (current.getRight() == null)
                {
                    current.setRight(new Node(key, value));
                    done = true;
                }
                else
                {
                    current = current.getRight();
                }
            }
            else
            {
                current.setValue(value);
                done = true;
            }
        }
    }

    /**
     *
     * @param key the key of the node
     * @return the value of the node with the key
     */
    public V find(K key)
    {
        Node<K,V> current = root;

        while(current.getKey()!=key)
        {
            if(current.getKey().compareTo(key)>0)
            {
                if(current.getLeft()!=null)
                {
                    current = current.getLeft();
                }
                else
                {
                    return null;
                }
            }
            else if(current.getKey().compareTo(key)<0)
            {
                if(current.getRight()!=null)
                {
                    current = current.getRight();
                }
                else
                {
                    return null;
                }
            }
        }
        if(current.getKey().equals(key))
        {
            return current.getValue();
        }
    return null;
    }

    /**
     *
     * @return array of the binary tree in order
     */
    public V[] flatten()
    {
        int i = 0;
        V[] array = (V[]) new Object[numnodes(root)];
        Stack<Node<K,V>> todo = new Stack<>();
        Node<K,V> current = root;

        while(!todo.isEmpty()||current!=null)
        {
            while(current!= null)
            {
                todo.push(current);
                current = current.getLeft();
            }
            current=todo.pop();
            array[i] = current.getValue();
            i++;
            current = current.getRight();
        }
        return array;
    }

    /**
     *
     * @param node root node
     * @return  number of nodes that belong in the subtree of the root node
     */
    public int numnodes(Node<K,V> node)
    {
        if(root == null)
        {
            return 0;
        }
        int count = 1;
        if(node.getLeft()!=null)
        {
            count+=numnodes(node.getLeft());
        }
        if(node.getRight()!=null)
        {
            count+=numnodes(node.getRight());
        }
        return count;
    }

    /**
     *
     * @param key key of the node to be removed
     */
    public void remove(K key)
    {
        Node<K,V> beforecurrent = null;
        Node<K,V> current = root;
        while(current.getKey()!=key)
        {
            if(current.getKey().compareTo(key)>0)
            {
                if(current.getLeft()!=null)
                {
                    beforecurrent = current;
                    current = current.getLeft();
                }
                else
                {
                    return;
                }
            }
            else if(current.getKey().compareTo(key)<0)
            {
                if(current.getRight()!=null)
                {
                    beforecurrent = current;
                    current = current.getRight();
                }
                else
                {
                    return;
                }
            }
        }
        if(!current.getKey().equals(key))
        {
            return;
        }
        if(current.getLeft() == null && current.getRight()== null )
        {
            if(beforecurrent.getKey().compareTo(current.getKey())<0)
            {
                beforecurrent.setRight(null);
            }
            else
            {
                beforecurrent.setLeft(null);
            }
        }
        else if(current.getLeft() == null && current.getRight()!=null)
        {
            if(beforecurrent.getKey().compareTo(current.getKey())<0)
            {
                beforecurrent.setRight(current.getRight());
            }
            else
            {
                beforecurrent.setLeft(current.getRight());
            }
        }
        else if(current.getLeft() != null && current.getRight()==null)
        {
            if(beforecurrent.getKey().compareTo(current.getKey())<0)
            {
                beforecurrent.setRight((current.getLeft()));
            }
            else
            {
                beforecurrent.setLeft(current.getLeft());
            }
        }
        else
        {
            if(key == root.getKey())
            {
                Node<K,V> temp = null;
                temp=getMin(root.getRight());
                remove(temp.getKey());
                Node<K,V> templ = root.getLeft();
                Node<K,V> tempr = root.getRight();
                root=temp;
                root.setLeft(templ);
                root.setRight(tempr);
                System.out.println(root.getKey());
                System.out.println(root.getLeft().getKey());
                System.out.println(root.getRight().getKey());

            }
            else if(beforecurrent.getKey().compareTo(current.getKey())<0)
            {

                Node<K,V> temp = getMin(current);
                remove(temp.getKey());
                Node<K,V> templ = current.getLeft();
                Node<K,V> tempr = current.getRight();
                beforecurrent.setRight(temp);
                temp.setLeft(templ);
                temp.setRight(tempr);

            }
            else
            {
                Node<K,V> temp = getMax(current);
                remove(temp.getKey());
                Node<K,V> templ = current.getLeft();
                Node<K,V> tempr = current.getRight();
                beforecurrent.setLeft(temp);
                temp.setLeft(templ);
                temp.setRight(tempr);
            }

        }
    }

    /**
     *
     * @param start root node
     * @return rightmost node of the subtree starting at the root
     */
    public Node<K,V> getMax(Node<K,V> start)
    {
        Node<K,V> current = start;
        while(current.getRight()!=null)
        {
            current = current.getRight();
        }
        return current;
    }

    /**
     *
     * @param start root node
     * @return leftmost node of the subtree starting at the root
     */
    public Node<K,V> getMin(Node<K,V> start)
    {
        Node<K,V> current = start;
        while(current.getLeft()!=null)
        {
            current = current.getLeft();
        }
        return current;
    }

    /**
     *
     * @param other subtree to be compared with
     * @return  Whether the binary tree contains the other tree
     * return true if other is null
     */
    public boolean containsSubtree(BinaryTree<K, V> other)
    {
        if(other.root == null)
        {
            return true;
        }
        Node<K,V> current = root;
        while(current.getKey()!=other.getRoot().getValue())
        {
            if(current.getKey().compareTo(other.getRoot().getKey())>0)
            {
                if(current.getLeft()!=null)
                {
                    current = current.getLeft();
                }
                else
                {
                    return false;
                }
            }
            else if(current.getKey().compareTo(other.getRoot().getKey())<0)
            {
                if(current.getRight()!=null)
                {
                    current = current.getRight();
                }
                else
                {
                    return false;
                }
            }
            else
            {
                break;
            }
        }

        Stack<Node<K,V>> todoours = new Stack<>();
        Stack<Node<K,V>> todoother = new Stack<>();
        Node<K,V> subcurrent = other.getRoot();
        todoours.push(current);
        todoother.push(subcurrent);
        boolean same = true;
        while(!todoours.isEmpty())
        {

            current = todoours.pop();
            subcurrent = todoother.pop();
            if(current==null && subcurrent==null)
            {
                //do nothing
            }

            else if(!current.equals(subcurrent))
            {

                return false;
            }
            else
            {
                todoours.push(current.getLeft());
                todoours.push(current.getRight());
                todoother.push(subcurrent.getLeft());
                todoother.push(subcurrent.getRight());
            }
        }

    return same;
    }
}
