.class Lcom/zte/mifavor/preference/PreferenceFragment$1;
.super Landroid/os/Handler;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/PreferenceFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceFragment$1;->this$0:Lcom/zte/mifavor/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment$1;->this$0:Lcom/zte/mifavor/preference/PreferenceFragment;

    # invokes: Lcom/zte/mifavor/preference/PreferenceFragment;->bindPreferences()V
    invoke-static {v0}, Lcom/zte/mifavor/preference/PreferenceFragment;->access$000(Lcom/zte/mifavor/preference/PreferenceFragment;)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
