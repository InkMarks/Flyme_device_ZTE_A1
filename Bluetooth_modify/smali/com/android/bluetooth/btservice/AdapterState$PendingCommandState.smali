.class Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
.super Lcom/android/internal/util/State;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingCommandState"
.end annotation


# instance fields
.field private mIsTurningOff:Z

.field private mIsTurningOn:Z

.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p2, "x1"    # Lcom/android/bluetooth/btservice/AdapterState$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering PendingCommandState State: isTurningOn()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isTurningOff()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOff()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->access$300(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public isTurningOff()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOff:Z

    return v0
.end method

.method public isTurningOn()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOn:Z

    return v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0x65

    const/16 v12, 0xc

    const/16 v11, 0x68

    const/16 v10, 0xa

    const/4 v5, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOn()Z

    move-result v3

    .line 244
    .local v3, "isTurningOn":Z
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOff()Z

    move-result v2

    .line 246
    .local v2, "isTurningOff":Z
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$400(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    .line 247
    .local v1, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$800(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    .line 248
    .local v0, "adapterProperties":Lcom/android/bluetooth/btservice/AdapterProperties;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    const-string v6, "BluetoothAdapterState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive message at Pending State after cleanup:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_0
    return v5

    .line 254
    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 393
    const-string v6, "BluetoothAdapterState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: UNEXPECTED MESSAGE: CURRENT_STATE=PENDING, MESSAGE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :sswitch_0
    const-string v5, "BluetoothAdapterState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CURRENT_STATE=PENDING, MESSAGE = USER_TURN_ON, isTurningOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isTurningOff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz v3, :cond_3

    .line 259
    const-string v5, "BluetoothAdapterState"

    const-string v6, "CURRENT_STATE=PENDING: Alreadying turning on bluetooth... Ignoring USER_TURN_ON..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_2
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 261
    :cond_3
    const-string v5, "BluetoothAdapterState"

    const-string v6, "CURRENT_STATE=PENDING: Deferring request USER_TURN_ON"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/bluetooth/btservice/AdapterState;->access$1100(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V

    goto :goto_1

    .line 266
    :sswitch_1
    const-string v5, "BluetoothAdapterState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CURRENT_STATE=PENDING, MESSAGE = USER_TURN_ON, isTurningOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isTurningOff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-eqz v2, :cond_4

    .line 269
    const-string v5, "BluetoothAdapterState"

    const-string v6, "CURRENT_STATE=PENDING: Alreadying turning off bluetooth... Ignoring USER_TURN_OFF..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 271
    :cond_4
    const-string v5, "BluetoothAdapterState"

    const-string v6, "CURRENT_STATE=PENDING: Deferring request USER_TURN_OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/bluetooth/btservice/AdapterState;->access$1200(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V

    goto :goto_1

    .line 276
    :sswitch_2
    const-string v5, "BluetoothAdapterState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CURRENT_STATE=PENDING, MESSAGE = STARTED, isTurningOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isTurningOff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v6, 0x64

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v5, v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$1300(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 281
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->enableNative()Z

    move-result v4

    .line 282
    .local v4, "ret":Z
    if-nez v4, :cond_5

    .line 283
    const-string v5, "BluetoothAdapterState"

    const-string v6, "Error while turning Bluetooth On"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v5, v10}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 285
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$1400(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$1500(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 287
    :cond_5
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v6, 0x1f40

    invoke-virtual {v5, v9, v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    goto/16 :goto_1

    .line 293
    .end local v4    # "ret":Z
    :sswitch_3
    const-string v6, "BluetoothAdapterState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT_STATE=PENDING, MESSAGE = ENABLE_READY, isTurningOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isTurningOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v6, v9}, Lcom/android/bluetooth/btservice/AdapterState;->access$1600(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 295
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBluetoothReady()V

    .line 296
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 297
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$1700(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OnState;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$1800(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 298
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v5, v12}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_1

    .line 302
    :sswitch_4
    const-string v6, "BluetoothAdapterState"

    const-string v7, "Timeout will setting scan mode..Continuing with disable..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :sswitch_5
    const-string v6, "BluetoothAdapterState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT_STATE=PENDING, MESSAGE = BEGIN_DISABLE, isTurningOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isTurningOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v7, 0x69

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->access$1900(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 307
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v7, 0x67

    const-wide/16 v8, 0x1f40

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    .line 308
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->disableNative()Z

    move-result v4

    .line 309
    .restart local v4    # "ret":Z
    if-nez v4, :cond_2

    .line 310
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v7, 0x67

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->access$2000(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 311
    const-string v6, "BluetoothAdapterState"

    const-string v7, "Error while turning Bluetooth Off"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 314
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v5, v12}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_1

    .line 319
    .end local v4    # "ret":Z
    :sswitch_6
    const-string v6, "BluetoothAdapterState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT_STATE=PENDING, MESSAGE = DISABLED, isTurningOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isTurningOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz v3, :cond_6

    .line 321
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v6, v9}, Lcom/android/bluetooth/btservice/AdapterState;->access$2100(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 322
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v7, "Error enabling Bluetooth - hardware init failed"

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->access$2200(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 323
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 324
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$1400(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$2300(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 325
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopProfileServices()Z

    .line 326
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v5, v10}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_1

    .line 329
    :cond_6
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v7, 0x67

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->access$2400(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 330
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v8, 0x2134

    invoke-virtual {v6, v11, v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    .line 331
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopProfileServices()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 332
    const-string v5, "BluetoothAdapterState"

    const-string v6, "Stopping profile services that were post enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 337
    :cond_7
    :sswitch_7
    const-string v6, "BluetoothAdapterState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT_STATE=PENDING, MESSAGE = STOPPED, isTurningOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isTurningOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v6, v11}, Lcom/android/bluetooth/btservice/AdapterState;->access$2500(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 339
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 340
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$1400(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$2600(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 341
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v5, v10}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 343
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->processStop()V

    goto/16 :goto_1

    .line 346
    :sswitch_8
    const-string v6, "BluetoothAdapterState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT_STATE=PENDING, MESSAGE = START_TIMEOUT, isTurningOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isTurningOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v7, "Error enabling Bluetooth"

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->access$2200(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 348
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 349
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$1400(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$2700(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 350
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v5, v10}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_1

    .line 353
    :sswitch_9
    const-string v6, "BluetoothAdapterState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT_STATE=PENDING, MESSAGE = ENABLE_TIMEOUT, isTurningOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isTurningOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v7, "Error enabling Bluetooth"

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->access$2200(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 356
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v7, "Enable timeout! Android native code exists fd leak issue because the services are not stopped"

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->access$2200(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 357
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v8, 0x2134

    invoke-virtual {v6, v11, v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(IJ)V

    .line 358
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopProfileServices()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 359
    const-string v5, "BluetoothAdapterState"

    const-string v6, "Stopping profile services that were post enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 362
    :cond_8
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V
    invoke-static {v6, v11}, Lcom/android/bluetooth/btservice/AdapterState;->access$2800(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 364
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOn(Z)V

    .line 365
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$1400(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$2900(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 366
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v5, v10}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_1

    .line 369
    :sswitch_a
    const-string v6, "BluetoothAdapterState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT_STATE=PENDING, MESSAGE = STOP_TIMEOUT, isTurningOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isTurningOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v7, "Error stopping Bluetooth profiles"

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->access$2200(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->dumpMessageHistory()V

    .line 375
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 376
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$1400(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$3000(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 379
    :sswitch_b
    const-string v6, "BluetoothAdapterState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT_STATE=PENDING, MESSAGE = DISABLE_TIMEOUT, isTurningOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isTurningOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v7, "Error disabling Bluetooth"

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/bluetooth/btservice/AdapterState;->access$2200(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 381
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 382
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$1700(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OnState;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/bluetooth/btservice/AdapterState;->access$3100(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 383
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v5, v12}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;I)V

    goto/16 :goto_1

    .line 387
    :sswitch_c
    const-string v5, "BluetoothAdapterState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CURRENT_STATE=PENDING, MESSAGE = RESET, isTurningOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isTurningOff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v5, "BluetoothAdapterState"

    const-string v6, "CURRENT_STATE=PENDING: Deferring RESET"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/bluetooth/btservice/AdapterState;->access$3200(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 254
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x14 -> :sswitch_1
        0x15 -> :sswitch_5
        0x18 -> :sswitch_6
        0x19 -> :sswitch_7
        0x32 -> :sswitch_c
        0x64 -> :sswitch_8
        0x65 -> :sswitch_9
        0x67 -> :sswitch_b
        0x68 -> :sswitch_a
        0x69 -> :sswitch_4
    .end sparse-switch
.end method

.method public setTurningOff(Z)V
    .locals 0
    .param p1, "isTurningOff"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOff:Z

    .line 234
    return-void
.end method

.method public setTurningOn(Z)V
    .locals 0
    .param p1, "isTurningOn"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->mIsTurningOn:Z

    .line 226
    return-void
.end method
