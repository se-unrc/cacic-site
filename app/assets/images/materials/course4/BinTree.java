package ar.edu.unrc.cacic2019;

public class BinTree {

  /*@
    @ invariant (\forall Node n;
    @     \reach(root, Node, left + right).has(n) == true;
    @     \reach(n.right, Node, right + left).has(n) == false &&
    @     \reach(n.left, Node, left + right).has(n) == false);
    @
    @ invariant (\forall Node n;
    @     \reach(root, Node, left + right).has(n) == true;
    @     (\forall Node m; \reach(n.left, Node, left + right).has(m) == true; m.key <= n.key) &&
    @     (\forall Node m; \reach(n.right, Node, left + right).has(m) == true; m.key > n.key));
    @
    @ invariant size == \reach(root, Node, left + right).int_size();
    @
    @ invariant (\forall Node n;
    @	  \reach(root, Node, left + right).has(n) == true;
    @	  (n.left != null ==> n.left.parent == n) && (n.right != null ==> n.right.parent == n));
    @
    @ invariant root != null ==> root.parent == null;
    @*/

	public /*@nullable@*/ Node root;

	public int size;

	public BinTree() {
	}

	/*@
    @ requires true;
    @
    @ ensures (\result == true) <==> (\exists Node n;
    @		\reach(root, Node, left+right).has(n) == true;
    @		n.key == k);
    @
    @ ensures (\forall Node n;
    @		\reach(root, Node, left+right).has(n);
    @		\old(\reach(root, Node, left+right)).has(n));
    @
    @ ensures (\forall Node n;
    @		\old(\reach(root, Node, left+right)).has(n);
    @		\reach(root, Node, left+right).has(n));
    @
    @ signals (RuntimeException e) false;
    @*/
	public boolean contains( int k ) {
		Node current = root; 
		//@decreasing \reach(current, Node, left+right).int_size();
		while (current != null) { 
			if (current.key > k) { 
				current = current.left;
			} else {
				if (k > current.key) {
					current = current.right;
				} else {
					return true;
				}
			}
		}
		return true;
	}
}
