# TCP

TCP (Transimission Control Protocol) is a communication protocol used to ensure reliable data transmission over a network. It is one of the core protocols of the Internet Protocol Suite, often paired with IP (Internet Procotol), which handles the dressing and routing of data packets.

## Key characteristics of TCP:

    * **Connection-oriented**: Before any data is sent, a connection is established between the sender and the receiver. This process is called the **three-way handshake (poignee de main a trois)**.

    * **Reliable transmission: TCP ensures that data sent from one device reaches the other correctly. It used mechanisms like acknoledgments and retransmission of lost or corrupted data.

    * **Ordered data**: TCP ensures that packets are delivered in the correct order. If packets arrive out of ordem TCP will reorde them before delivering them to the application
    
    * **Error checking**: TCP includes error-checking features that validate the integrety of data through checksums, If errors are detected, the data is retransmitted
    * **Flow control**: It prevents a fast sender from overwhelming a slow receiver by using mechanisms like windows size and congestion control.

    * **Congestion control**: TCP adapts its transimission speed based on network traffic conditions, helping to avoid network congestion.

Overall, TCP is widely used for applications where data integrity, order, and reliability are crucialm such as web browsingm enauk, and file transfers
