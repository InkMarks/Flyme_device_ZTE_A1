.class public Lcom/google/android/mms/pdu/SendConf;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "SendConf.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 38
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendConf;->setMessageType(I)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getMessageId()[B
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getResponseStatus()I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getResponseText()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x93

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 67
    return-void
.end method

.method public setResponseStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x92

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 86
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 105
    return-void
.end method
