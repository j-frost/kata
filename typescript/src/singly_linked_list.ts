export class SinglyLinkedList {
    private size = 0;

    get length(): number {
        return this.size;
    }

    append(_node: SinglyLinkedNode): void {
        this.size++;
    }
}

export class SinglyLinkedNode {
    constructor(private stringValue: string, private nextNode: SinglyLinkedNode | null = null) {}

    get value(): string {
        return this.stringValue;
    }

    get next(): SinglyLinkedNode | null {
        return this.nextNode;
    }
}
