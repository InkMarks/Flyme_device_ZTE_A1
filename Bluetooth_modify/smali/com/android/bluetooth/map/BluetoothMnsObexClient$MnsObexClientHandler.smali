.class final Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;
.super Landroid/os/Handler;
.source "BluetoothMnsObexClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMnsObexClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MnsObexClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 95
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMnsObexClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient$1;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->handleRegistration(II)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/map/BluetoothMnsObexClient;->sendEventHandler([BI)I
    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->access$100(Lcom/android/bluetooth/map/BluetoothMnsObexClient;[BI)I

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
