export class SinglyLinkedList {
    constructor(start?: SinglyLinkedNode) {
        this._start = start ?? null;
        this._length = start ? 1 : 0;
    }

    private _start: SinglyLinkedNode | null;

    get start(): SinglyLinkedNode | null {
        return this._start;
    }

    private _length: number;

    get length(): number {
        return this._length;
    }

    append(node: SinglyLinkedNode): void {
        if (this._start === null) {
            this._start = node;
        } else {
            this._start.next = node;
        }
        this._length++;
    }
}

export class SinglyLinkedNode {
    private readonly _value: string;

    constructor(value: string, next?: SinglyLinkedNode) {
        this._value = value;
        this._next = next ?? null;
    }

    private _next: SinglyLinkedNode | null;

    get next(): SinglyLinkedNode | null {
        return this._next;
    }

    set next(other: SinglyLinkedNode | null) {
        this._next = other;
    }

    get value(): string {
        return this._value;
    }
}
