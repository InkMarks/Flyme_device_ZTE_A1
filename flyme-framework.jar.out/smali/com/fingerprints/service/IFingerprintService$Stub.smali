.class public abstract Lcom/fingerprints/service/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Lcom/fingerprints/service/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/service/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.fingerprints.service.IFingerprintService"

.field static final TRANSACTION_cancel:I = 0x6

.field static final TRANSACTION_getIds:I = 0x8

.field static final TRANSACTION_getNameById:I = 0xa

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_release:I = 0x7

.field static final TRANSACTION_removeData:I = 0x5

.field static final TRANSACTION_setIdName:I = 0x9

.field static final TRANSACTION_startEnrol:I = 0x2

.field static final TRANSACTION_startGuidedEnrol:I = 0x3

.field static final TRANSACTION_startIdentify:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {p0, p0, v0}, Lcom/fingerprints/service/IFingerprintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.fingerprints.service.IFingerprintService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/fingerprints/service/IFingerprintService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/fingerprints/service/IFingerprintService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/fingerprints/service/IFingerprintService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/fingerprints/service/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v3, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/fingerprints/service/IFingerprintService$Stub;->open(Lcom/fingerprints/service/IFingerprintClient;)Z

    move-result v2

    .line 52
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    .end local v2    # "_result":Z
    :sswitch_2
    const-string v3, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/fingerprints/service/IFingerprintService$Stub;->startEnrol(Lcom/fingerprints/service/IFingerprintClient;I)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string v3, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/fingerprints/service/IFingerprintService$Stub;->startGuidedEnrol(Lcom/fingerprints/service/IFingerprintClient;I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string v3, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 84
    .restart local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 85
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Lcom/fingerprints/service/IFingerprintService$Stub;->startIdentify(Lcom/fingerprints/service/IFingerprintClient;[I)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    .end local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    .end local v1    # "_arg1":[I
    :sswitch_5
    const-string v5, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 95
    .restart local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/fingerprints/service/IFingerprintService$Stub;->removeData(Lcom/fingerprints/service/IFingerprintClient;I)Z

    move-result v2

    .line 97
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 103
    .end local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v3, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 106
    .restart local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/fingerprints/service/IFingerprintService$Stub;->cancel(Lcom/fingerprints/service/IFingerprintClient;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 112
    .end local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    :sswitch_7
    const-string v3, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 115
    .restart local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/fingerprints/service/IFingerprintService$Stub;->release(Lcom/fingerprints/service/IFingerprintClient;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    :sswitch_8
    const-string v3, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 124
    .restart local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/fingerprints/service/IFingerprintService$Stub;->getIds(Lcom/fingerprints/service/IFingerprintClient;)[I

    move-result-object v2

    .line 125
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":Lcom/fingerprints/service/IFingerprintClient;
    .end local v2    # "_result":[I
    :sswitch_9
    const-string v3, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/fingerprints/service/IFingerprintService$Stub;->setIdName(ILjava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_a
    const-string v3, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/fingerprints/service/IFingerprintService$Stub;->getNameById(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
