# Universal Algebra
We continued our discussion on universal algebra this week. In particular, I would like to explore the ideas of Abstract Data Types, Term algebras, Homomorphisms, and Initiality.

An abstract data type is a data type which is defined by its functionality (how it behaves) rather than its implementation (how its coded). Note that these abstract data types are not just sets of data, but there lies algebras behind them. An example of this is a Stack, which is a LIFO structure (Last-in, First-out). This means that adding an element to a stack adds it to the top of the stack, and popping a stack removes the top-most data element.
In this example of a Stack, we care not how it is implemented or what it may hold, but rather its functions. Different abstract data types are important to study because each has their own run-time and storage complexity. Thus, we have a whole class devoted to them!

When talking about an algebra, it's important to know what a signature is. A signature is a set of 'operation symbols' together with an assignment of an arity to each operation symbol.
Now that we know what a signature is, we can say that an algebra for a signature consists of a set A together with an n-ary function for each n-ary operation symbol.

Moving on, term algebras are not just sets but algebras. In particular, homomorphisms are structure preserving maps of algebras. 
A formal way to write the definiton of homomorphism is to say that a homomorphism between to algebras A and B h:A-->B satisfies the equation that
h(op<sub>A</sub>(a<sub>1</sub>,...a<sub>n</sub>)) = op<sub>B</sub>(h(a<sub>1</sub>),...h(a<sub>n</sub>)) for all elements a<sub>1</sub>,...a<sub>n</sub> in set A.

Finally, let's examine what it means for an algebra to be initial. An algebra I is said to be initial if for all algebras A there is a unique homomorphism I-->A. A good way to think about intitial algebras is to think of them as the existence of the unique homomorphism by using induction on their universal property and using it as a definition of initial algebras.

I feel as if all of these terms about algebras are crucial to our understanding of programming languages because it helps us to understand complicated models of computation, specifically abstract data types and its algebras associated with it. We can use these abstract data types to make better, faster software and become better programmers!

**I didn't provide any Julia code in this blog because I am beginning to code our class project: PET. More to come on this!**
