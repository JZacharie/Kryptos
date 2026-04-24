document.addEventListener('alpine:init', () => {
    Alpine.data('dashboard', () => ({
        view: 'dashboard', // dashboard | namespace | wizard
        selectedNamespace: null,
        wizardStep: 1,
        newSecret: {
            template: null,
            namespace: '',
            name: '',
            vaultPath: '',
            rotation: false
        },
        namespaces: [
            { id: 'mes-prod', name: 'mes-prod', status: 'error', secrets: 12, alerts: 2 },
            { id: 'mes-staging', name: 'mes-staging', status: 'warning', secrets: 12, alerts: 1 },
            { id: 'common-services', name: 'common-services', status: 'healthy', secrets: 45, alerts: 0 },
            { id: 'data-analytics', name: 'data-analytics', status: 'healthy', secrets: 28, alerts: 0 }
        ],
        
        init() {
            console.log('Secret Seal Dashboard Initialized');
        },

        startWizard() {
            this.view = 'wizard';
            this.wizardStep = 1;
            this.newSecret = { template: null, namespace: '', name: '', vaultPath: '', rotation: false };
        },
        
        selectNamespace(ns) {
            this.selectedNamespace = ns;
            this.view = 'namespace';
        },
        
        goBack() {
            this.view = 'dashboard';
            this.selectedNamespace = null;
        },

        nextStep() {
            if (this.wizardStep < 3) this.wizardStep++;
        },

        prevStep() {
            if (this.wizardStep > 1) this.wizardStep--;
        }
    }));
});
