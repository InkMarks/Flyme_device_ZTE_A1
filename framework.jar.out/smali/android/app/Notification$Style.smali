.class public abstract Landroid/app/Notification$Style;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field private mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroid/app/Notification$Builder;

.field protected mSummaryText:Ljava/lang/CharSequence;

.field protected mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3564
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 3569
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3658
    iget-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v0, :cond_0

    .line 3659
    const-string v0, "android.summaryText"

    iget-object v1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3661
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 3662
    const-string v0, "android.title.big"

    iget-object v1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3664
    :cond_1
    const-string v0, "android.template"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3665
    return-void
.end method

.method protected applyTopPadding(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v2, 0x0

    .line 3648
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mHasThreeLines:Z
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$1100(Landroid/app/Notification$Builder;)Z

    move-result v1

    iget-object v4, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0, v1, v4}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v3

    .line 3651
    .local v3, "topPadding":I
    const v1, #android:id@line1#t

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 3652
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 3719
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 3720
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 3685
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateTickerView(Landroid/app/Notification;)V

    .line 3686
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateContentView(Landroid/app/Notification;)V

    .line 3687
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateBigContentView(Landroid/app/Notification;)V

    .line 3688
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateHeadsUpContentView(Landroid/app/Notification;)V

    .line 3689
    return-object p1
.end method

.method protected checkBuilder()V
    .locals 2

    .prologue
    .line 3599
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    .line 3600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style requires a valid Builder object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3602
    :cond_0
    return-void
.end method

.method protected getStandardView(I)Landroid/widget/RemoteViews;
    .locals 10
    .param p1, "layoutId"    # I

    .prologue
    const v9, #android:id@line1#t

    const v8, #android:id@overflow_divider#t

    const v7, #android:id@text#t

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 3605
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 3608
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$600(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3609
    .local v1, "oldBuilderContentTitle":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 3610
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3613
    :cond_0
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActionsFlyme(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3615
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # setter for: Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;
    invoke-static {v3, v1}, Landroid/app/Notification$Builder;->access$602(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3617
    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3618
    invoke-virtual {v0, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3624
    :goto_0
    iget-boolean v3, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v3, :cond_2

    iget-object v2, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 3627
    .local v2, "overflowText":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v2, :cond_3

    .line 3628
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v3, v2}, Landroid/app/Notification$Builder;->access$900(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, #android:id@line3#t

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    return-object v0

    .end local v2    # "overflowText":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0, v9, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$800(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .restart local v2    # "overflowText":Ljava/lang/CharSequence;
    :cond_3
    const-string v3, ""

    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, #android:id@line3#t

    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method protected hasProgress()Z
    .locals 1

    .prologue
    .line 3729
    const/4 v0, 0x1

    return v0
.end method

.method protected internalSetBigContentTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 3578
    iput-object p1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 3579
    return-void
.end method

.method protected internalSetSummaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 3585
    iput-object p1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 3586
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 3587
    return-void
.end method

.method protected populateBigContentView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 3705
    return-void
.end method

.method protected populateContentView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 3700
    return-void
.end method

.method protected populateHeadsUpContentView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 3710
    return-void
.end method

.method protected populateTickerView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 3696
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3671
    const-string v0, "android.summaryText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3672
    const-string v0, "android.summaryText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 3673
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 3675
    :cond_0
    const-string v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3676
    const-string v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 3678
    :cond_1
    return-void
.end method

.method public setBuilder(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 3590
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eq v0, p1, :cond_0

    .line 3591
    iput-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 3592
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    .line 3593
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 3596
    :cond_0
    return-void
.end method
