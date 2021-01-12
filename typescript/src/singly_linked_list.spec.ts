import { expect } from 'chai';
import { SinglyLinkedList, SinglyLinkedNode } from './singly_linked_list';

describe('Singly linked list', () => {
    it('should be an instantiable object', () => {
        new SinglyLinkedList();
    });

    it('should have a start', () => {
        new SinglyLinkedList(new SinglyLinkedNode('foo'));
    });

    it('should have the given start', () => {
        const node = new SinglyLinkedNode('foo');
        expect(new SinglyLinkedList(node)).to.have.property('_start', node);
    });

    it('should allow appending a node', () => {
        new SinglyLinkedList().append(new SinglyLinkedNode('foo'));
    });

    describe('#append', () => {
        it('should increase number of nodes by one', () => {
            const node = new SinglyLinkedNode('foo');
            const list = new SinglyLinkedList();
            expect(list.length).to.equal(0);

            list.append(node);

            expect(list.length).to.equal(1);
        });

        it('should overwrite the start node if the list is empty', () => {
            const node = new SinglyLinkedNode('foo');
            const list = new SinglyLinkedList();

            list.append(node);

            expect(list).to.have.property('_start', node);
        });

        it('should set the next node correctly', () => {
            const node = new SinglyLinkedNode('bar');
            const start = new SinglyLinkedNode('foo');
            const list = new SinglyLinkedList(start);

            list.append(node);

            expect(list).to.have.property('_start', start);
            expect(list.start?.next).equal(node);
        });

        it('should append a chain at the end', () => {
            const node = new SinglyLinkedNode('baz');
            const other = new SinglyLinkedNode('bar');
            const start = new SinglyLinkedNode('foo');
            const list = new SinglyLinkedList(start);

            list.append(other);
            list.append(node);

            expect(list).to.have.property('_start', start);
            expect(list.start?.next?.next).equal(node);
        });
    });
});

describe('Singly linked node', () => {
    it('should be an instantiable object', () => {
        new SinglyLinkedNode('');
    });

    it('should have a string value', () => {
        expect(new SinglyLinkedNode('foo').value).to.equal('foo');
    });

    it('should know the next node', () => {
        expect(new SinglyLinkedNode('foo').next).not.to.be.an('undefined');
        const other = new SinglyLinkedNode('bar');
        expect(new SinglyLinkedNode('foo', other).next).to.equal(other);
    });

    it('should be able to set the next node', () => {
        const node = new SinglyLinkedNode('foo');
        const other = new SinglyLinkedNode('bar');
        node.next = other;
        expect(node.next).to.be.equal(other);
    });
});
