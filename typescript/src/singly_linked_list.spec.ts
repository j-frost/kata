import { expect } from 'chai';
import { SinglyLinkedList, SinglyLinkedNode } from './singly_linked_list';

describe('Singly linked list', () => {
    it('should be an instantiable object', () => {
        new SinglyLinkedList();
    });

    it('should allow appending a node', () => {
        new SinglyLinkedList().append(new SinglyLinkedNode('foo'));
    });

    describe('#append', () => {
        it('should add a node', () => {
            const node = new SinglyLinkedNode('foo');
            const list = new SinglyLinkedList();
            expect(list.length).to.equal(0);

            list.append(node);

            expect(list.length).to.equal(1);
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
});
