.class Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;
.super Landroid/os/Handler;
.source "FingerprintUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;


# direct methods
.method constructor <init>(Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;->this$1:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;

    .line 703
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 707
    iget-object v7, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;->this$1:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;

    monitor-enter v7

    .line 708
    :try_start_0
    iget-object v6, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;->this$1:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;

    # getter for: Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mStopTimeInFuture:J
    invoke-static {v6}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->access$0(Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 711
    .local v4, "millisLeft":J
    iget-object v6, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;->this$1:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;

    # getter for: Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mCountdownInterval:J
    invoke-static {v6}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->access$1(Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;)J

    move-result-wide v8

    cmp-long v6, v4, v8

    if-gez v6, :cond_0

    .line 712
    iget-object v6, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;->this$1:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;

    invoke-virtual {v6}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->onFinish()V

    .line 707
    :goto_0
    monitor-exit v7

    .line 727
    return-void

    .line 714
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 715
    .local v2, "lastTickStart":J
    iget-object v6, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;->this$1:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;

    invoke-virtual {v6, v4, v5}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->onTick(J)V

    .line 718
    iget-object v6, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;->this$1:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;

    # getter for: Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mCountdownInterval:J
    invoke-static {v6}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->access$1(Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;)J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 722
    .local v0, "delay":J
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v6, v0, v8

    if-ltz v6, :cond_1

    .line 724
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 707
    .end local v0    # "delay":J
    .end local v2    # "lastTickStart":J
    .end local v4    # "millisLeft":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 722
    .restart local v0    # "delay":J
    .restart local v2    # "lastTickStart":J
    .restart local v4    # "millisLeft":J
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2$1;->this$1:Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;

    # getter for: Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->mCountdownInterval:J
    invoke-static {v6}, Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;->access$1(Lcom/android/keyguard/FingerprintUnlock$CountDownTimer2;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    add-long/2addr v0, v8

    goto :goto_1
.end method