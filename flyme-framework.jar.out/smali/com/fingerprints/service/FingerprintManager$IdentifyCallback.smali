.class public interface abstract Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IdentifyCallback"
.end annotation


# virtual methods
.method public abstract fingerDown()V
.end method

.method public abstract fingerUp()V
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract onIdentified(IZ)V
.end method

.method public abstract onNoMatch()V
.end method
