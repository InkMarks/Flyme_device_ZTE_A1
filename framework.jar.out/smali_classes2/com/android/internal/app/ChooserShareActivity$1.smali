.class Lcom/android/internal/app/ChooserShareActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ChooserShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserShareActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserShareActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/app/ChooserShareActivity$1;->this$0:Lcom/android/internal/app/ChooserShareActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const-string v0, "android.intent.action.CAMERA_STOP_TO_CHOOSER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/internal/app/ChooserShareActivity$1;->this$0:Lcom/android/internal/app/ChooserShareActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserShareActivity;->finish()V

    .line 82
    :cond_0
    return-void
.end method
