.class Lcom/android/server/NetworkTimeUpdateService$MyHandler;
.super Landroid/os/Handler;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    .line 394
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 395
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 399
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 415
    :goto_0
    return-void

    .line 403
    :pswitch_0
    const-string v1, "NetworkTimeUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyHandler::handleMessage what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    iget v2, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V
    invoke-static {v1, v2}, Lcom/android/server/NetworkTimeUpdateService;->access$300(Lcom/android/server/NetworkTimeUpdateService;I)V

    goto :goto_0

    .line 409
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # invokes: Lcom/android/server/NetworkTimeUpdateService;->getGpsTimeSyncState()Z
    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->access$400(Lcom/android/server/NetworkTimeUpdateService;)Z

    move-result v0

    .line 410
    .local v0, "gpsTimeSyncStatus":Z
    const-string v1, "NetworkTimeUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS Time sync is changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v1, v0}, Lcom/android/server/NetworkTimeUpdateService;->onGpsTimeChanged(Z)V

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
