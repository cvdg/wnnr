# irq

```shell
$ lsirq
IRQ     TOTAL NAME
LOC 273312682 Local timer interrupts
 41  72668300 IR-PCI-MSIX-0000:06:00.0 0-edge enp6s0
CAL  22962009 Function call interrupts
130   4105625 IR-PCI-MSI-0000:01:00.1 0-edge ahci[0000:01:00.1]
RES    283711 Rescheduling interrupts
TLB    183185 TLB shootdowns
 58     21947 IR-PCI-MSIX-0000:07:00.0 9-edge nvme1q9
 52     21482 IR-PCI-MSIX-0000:07:00.0 3-edge nvme1q3
 98     21232 IR-PCI-MSIX-0000:04:00.0 9-edge nvme0q9
 92     20872 IR-PCI-MSIX-0000:04:00.0 3-edge nvme0q3
 51     20408 IR-PCI-MSIX-0000:07:00.0 2-edge nvme1q2
 57     20344 IR-PCI-MSIX-0000:07:00.0 8-edge nvme1q8
 55     20235 IR-PCI-MSIX-0000:07:00.0 6-edge nvme1q6
 50     20045 IR-PCI-MSIX-0000:07:00.0 1-edge nvme1q1
 54     20013 IR-PCI-MSIX-0000:07:00.0 5-edge nvme1q5
 61     19896 IR-PCI-MSIX-0000:07:00.0 12-edge nvme1q12
 91     19775 IR-PCI-MSIX-0000:04:00.0 2-edge nvme0q2
 60     19757 IR-PCI-MSIX-0000:07:00.0 11-edge nvme1q11
 90     19565 IR-PCI-MSIX-0000:04:00.0 1-edge nvme0q1
 95     19527 IR-PCI-MSIX-0000:04:00.0 6-edge nvme0q6
 97     19474 IR-PCI-MSIX-0000:04:00.0 8-edge nvme0q8
 94     19468 IR-PCI-MSIX-0000:04:00.0 5-edge nvme0q5
 59     19411 IR-PCI-MSIX-0000:07:00.0 10-edge nvme1q10
 53     19289 IR-PCI-MSIX-0000:07:00.0 4-edge nvme1q4
101     19288 IR-PCI-MSIX-0000:04:00.0 12-edge nvme0q12
 56     19258 IR-PCI-MSIX-0000:07:00.0 7-edge nvme1q7
100     18977 IR-PCI-MSIX-0000:04:00.0 11-edge nvme0q11
 93     18836 IR-PCI-MSIX-0000:04:00.0 4-edge nvme0q4
 99     18716 IR-PCI-MSIX-0000:04:00.0 10-edge nvme0q10
 96     18646 IR-PCI-MSIX-0000:04:00.0 7-edge nvme0q7
MCP      2916 Machine check polls
135       860 IR-PCI-MSI-0000:08:00.6 0-edge snd_hda_intel:card1
 38       592 IR-PCI-MSIX-0000:04:00.0 0-edge nvme0q0
 40       592 IR-PCI-MSIX-0000:07:00.0 0-edge nvme1q0
NMI       103 Non-maskable interrupts
PMI       103 Performance monitoring interrupts
 42        78 IR-PCI-MSIX-0000:01:00.0 0-edge xhci_hcd
134        74 IR-PCI-MSI-0000:08:00.1 0-edge snd_hda_intel:card0
  0        38 IR-IO-APIC 2-edge timer
136        22 IR-PCI-MSIX-0000:08:00.0 0-edge amdgpu
IWI         3 IRQ work interrupts
  6         0 IR-IO-APIC 6-edge AMDI0010:03
  7         0 IR-IO-APIC 7-fasteoi pinctrl_amd
  8         0 IR-IO-APIC 8-edge rtc0
  9         0 IR-IO-APIC 9-fasteoi acpi
 25         0 IOMMU-MSI 368-edge AMD-Vi0-Evt
 26         0 IOMMU-MSI 376-edge AMD-Vi0-PPR
 27         0 IOMMU-MSI 384-edge AMD-Vi0-GA
 43         0 IR-PCI-MSIX-0000:01:00.0 1-edge xhci_hcd
 44         0 IR-PCI-MSIX-0000:01:00.0 2-edge xhci_hcd
 45         0 IR-PCI-MSIX-0000:01:00.0 3-edge xhci_hcd
 46         0 IR-PCI-MSIX-0000:01:00.0 4-edge xhci_hcd
 47         0 IR-PCI-MSIX-0000:01:00.0 5-edge xhci_hcd
 48         0 IR-PCI-MSIX-0000:01:00.0 6-edge xhci_hcd
 49         0 IR-PCI-MSIX-0000:01:00.0 7-edge xhci_hcd
 62         0 IR-PCI-MSIX-0000:07:00.0 13-edge nvme1q13
 63         0 IR-PCI-MSIX-0000:07:00.0 14-edge nvme1q14
 64         0 IR-PCI-MSIX-0000:07:00.0 15-edge nvme1q15
 65         0 IR-PCI-MSIX-0000:07:00.0 16-edge nvme1q16
 66         0 IR-PCI-MSIX-0000:07:00.0 17-edge nvme1q17
 67         0 IR-PCI-MSIX-0000:07:00.0 18-edge nvme1q18
 68         0 IR-PCI-MSIX-0000:07:00.0 19-edge nvme1q19
 69         0 IR-PCI-MSIX-0000:07:00.0 20-edge nvme1q20
 70         0 IR-PCI-MSIX-0000:07:00.0 21-edge nvme1q21
 71         0 IR-PCI-MSIX-0000:07:00.0 22-edge nvme1q22
 72         0 IR-PCI-MSIX-0000:07:00.0 23-edge nvme1q23
 73         0 IR-PCI-MSIX-0000:07:00.0 24-edge nvme1q24
 74         0 IR-PCI-MSIX-0000:07:00.0 25-edge nvme1q25
 75         0 IR-PCI-MSIX-0000:07:00.0 26-edge nvme1q26
 76         0 IR-PCI-MSIX-0000:07:00.0 27-edge nvme1q27
 77         0 IR-PCI-MSIX-0000:07:00.0 28-edge nvme1q28
 78         0 IR-PCI-MSIX-0000:07:00.0 29-edge nvme1q29
 79         0 IR-PCI-MSIX-0000:07:00.0 30-edge nvme1q30
 80         0 IR-PCI-MSIX-0000:07:00.0 31-edge nvme1q31
 81         0 IR-PCI-MSIX-0000:07:00.0 32-edge nvme1q32
 82         0 IR-PCI-MSIX-0000:08:00.3 0-edge xhci_hcd
 83         0 IR-PCI-MSIX-0000:08:00.3 1-edge xhci_hcd
 84         0 IR-PCI-MSIX-0000:08:00.3 2-edge xhci_hcd
 85         0 IR-PCI-MSIX-0000:08:00.3 3-edge xhci_hcd
 86         0 IR-PCI-MSIX-0000:08:00.3 4-edge xhci_hcd
 87         0 IR-PCI-MSIX-0000:08:00.3 5-edge xhci_hcd
 88         0 IR-PCI-MSIX-0000:08:00.3 6-edge xhci_hcd
 89         0 IR-PCI-MSIX-0000:08:00.3 7-edge xhci_hcd
102         0 IR-PCI-MSIX-0000:04:00.0 13-edge nvme0q13
103         0 IR-PCI-MSIX-0000:04:00.0 14-edge nvme0q14
104         0 IR-PCI-MSIX-0000:04:00.0 15-edge nvme0q15
105         0 IR-PCI-MSIX-0000:04:00.0 16-edge nvme0q16
106         0 IR-PCI-MSIX-0000:04:00.0 17-edge nvme0q17
107         0 IR-PCI-MSIX-0000:04:00.0 18-edge nvme0q18
108         0 IR-PCI-MSIX-0000:04:00.0 19-edge nvme0q19
109         0 IR-PCI-MSIX-0000:04:00.0 20-edge nvme0q20
110         0 IR-PCI-MSIX-0000:04:00.0 21-edge nvme0q21
111         0 IR-PCI-MSIX-0000:04:00.0 22-edge nvme0q22
112         0 IR-PCI-MSIX-0000:04:00.0 23-edge nvme0q23
113         0 IR-PCI-MSIX-0000:04:00.0 24-edge nvme0q24
114         0 IR-PCI-MSIX-0000:04:00.0 25-edge nvme0q25
115         0 IR-PCI-MSIX-0000:04:00.0 26-edge nvme0q26
116         0 IR-PCI-MSIX-0000:04:00.0 27-edge nvme0q27
117         0 IR-PCI-MSIX-0000:04:00.0 28-edge nvme0q28
118         0 IR-PCI-MSIX-0000:04:00.0 29-edge nvme0q29
119         0 IR-PCI-MSIX-0000:04:00.0 30-edge nvme0q30
120         0 IR-PCI-MSIX-0000:04:00.0 31-edge nvme0q31
121         0 IR-PCI-MSIX-0000:04:00.0 32-edge nvme0q32
122         0 IR-PCI-MSIX-0000:08:00.4 0-edge xhci_hcd
123         0 IR-PCI-MSIX-0000:08:00.4 1-edge xhci_hcd
124         0 IR-PCI-MSIX-0000:08:00.4 2-edge xhci_hcd
125         0 IR-PCI-MSIX-0000:08:00.4 3-edge xhci_hcd
126         0 IR-PCI-MSIX-0000:08:00.4 4-edge xhci_hcd
127         0 IR-PCI-MSIX-0000:08:00.4 5-edge xhci_hcd
128         0 IR-PCI-MSIX-0000:08:00.4 6-edge xhci_hcd
129         0 IR-PCI-MSIX-0000:08:00.4 7-edge xhci_hcd
131         0 IR-PCI-MSIX-0000:08:00.2 0-edge psp-1
SPU         0 Spurious interrupts
RTR         0 APIC ICR read retries
TRM         0 Thermal event interrupts
THR         0 Threshold APIC interrupts
DFR         0 Deferred Error APIC interrupts
MCE         0 Machine check exceptions
ERR         0
MIS         0
PIN         0 Posted-interrupt notification event
NPI         0 Nested posted-interrupt event
PIW         0 Posted-interrupt wakeup event
```