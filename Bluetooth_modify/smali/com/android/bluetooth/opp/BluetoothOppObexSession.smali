.class public interface abstract Lcom/android/bluetooth/opp/BluetoothOppObexSession;
.super Ljava/lang/Object;
.source "BluetoothOppObexSession.java"


# static fields
.field public static final MSG_CONNECT_TIMEOUT:I = 0x4

.field public static final MSG_SESSION_COMPLETE:I = 0x1

.field public static final MSG_SESSION_ERROR:I = 0x2

.field public static final MSG_SHARE_COMPLETE:I = 0x0

.field public static final MSG_SHARE_INTERRUPTED:I = 0x3

.field public static final MSG_UPDATE_PROGRESS:I = 0x64

.field public static final SESSION_TIMEOUT:I = 0x1d4c0


# virtual methods
.method public abstract addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
.end method

.method public abstract getCurrentByte()I
.end method

.method public abstract notifyStopTaskId(I)V
.end method

.method public abstract registerCb(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;)V
.end method

.method public abstract start(Landroid/os/Handler;I)V
.end method

.method public abstract stop()V
.end method

.method public abstract unRegisterCb(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$UpdataProgress;)V
.end method

.method public abstract unblock()V
.end method
