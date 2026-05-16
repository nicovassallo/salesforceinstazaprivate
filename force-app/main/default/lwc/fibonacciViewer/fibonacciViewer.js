import { LightningElement } from 'lwc';
import getSequence from '@salesforce/apex/FibonacciLogger.getSequence';

export default class FibonacciViewer extends LightningElement {
    items = [];
    isLoading = false;
    error;

    get hasSequence() {
        return this.items.length > 0;
    }

    async handleStart() {
        this.isLoading = true;
        this.error = undefined;
        this.items = [];
        try {
            const result = await getSequence();
            this.items = result.map((value, i) => ({ index: i + 1, value }));
        } catch (e) {
            this.error = e?.body?.message ?? 'Errore durante la chiamata Apex';
        } finally {
            this.isLoading = false;
        }
    }
}
