.class Lcom/zte/fingerprint/FingerprintManager$1;
.super Lcom/zte/fingerprint/IFingerprintClient$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/FingerprintManager;->getService()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/FingerprintManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/FingerprintManager;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/zte/fingerprint/FingerprintManager$1;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    invoke-direct {p0}, Lcom/zte/fingerprint/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBundleMessage(IIILandroid/os/Bundle;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v1, p0, Lcom/zte/fingerprint/FingerprintManager$1;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/FingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/zte/fingerprint/FingerprintManager;->access$700(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 437
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 438
    iget-object v1, p0, Lcom/zte/fingerprint/FingerprintManager$1;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/FingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/zte/fingerprint/FingerprintManager;->access$700(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 439
    return-void
.end method

.method public onEnrolInfo([I)V
    .locals 4
    .param p1, "enrolInfo"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 444
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$1;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/FingerprintManager$EventHandler;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$700(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$EventHandler;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 445
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "enrolinfo"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 447
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 448
    iget-object v2, p0, Lcom/zte/fingerprint/FingerprintManager$1;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/FingerprintManager$EventHandler;
    invoke-static {v2}, Lcom/zte/fingerprint/FingerprintManager;->access$700(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 449
    return-void
.end method

.method public onMessage(III[B)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessage----------what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    iget-object v0, p0, Lcom/zte/fingerprint/FingerprintManager$1;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/FingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/zte/fingerprint/FingerprintManager;->access$700(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$EventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/fingerprint/FingerprintManager$1;->this$0:Lcom/zte/fingerprint/FingerprintManager;

    # getter for: Lcom/zte/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zte/fingerprint/FingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/zte/fingerprint/FingerprintManager;->access$700(Lcom/zte/fingerprint/FingerprintManager;)Lcom/zte/fingerprint/FingerprintManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/fingerprint/FingerprintManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessage----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/fingerprint/FingerprintManager;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    return-void
.end method
