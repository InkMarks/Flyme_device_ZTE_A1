.class Lcom/zte/fingerprint/manage/FPCManage$3;
.super Ljava/lang/Object;
.source "FPCManage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/manage/FPCManage;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/manage/FPCManage;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/manage/FPCManage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/manage/FPCManage;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/zte/fingerprint/manage/FPCManage$3;->this$0:Lcom/zte/fingerprint/manage/FPCManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/zte/fingerprint/manage/FPCManage$3;->this$0:Lcom/zte/fingerprint/manage/FPCManage;

    invoke-virtual {v0}, Lcom/zte/fingerprint/manage/FPCManage;->deleteFinger()V

    .line 206
    return-void
.end method
