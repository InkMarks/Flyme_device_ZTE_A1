.class Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarBackgroundDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContainer;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ActionBarContainer;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ActionBarContainer;Lcom/android/internal/widget/ActionBarContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/ActionBarContainer;
    .param p2, "x1"    # Lcom/android/internal/widget/ActionBarContainer$1;

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/ActionBarContainer;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$100(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$400(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$500(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$400(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 443
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$100(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$500(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$400(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$400(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-eq v2, v0, :cond_3

    :cond_2
    move v0, v1

    .line 451
    goto :goto_0

    .line 453
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$600(Lcom/android/internal/widget/ActionBarContainer;)Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/android/internal/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$700(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/internal/widget/ActionBarContainer;->access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-eq v2, v0, :cond_0

    :cond_4
    move v0, v1

    .line 459
    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$100(Lcom/android/internal/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;->this$0:Lcom/android/internal/widget/ActionBarContainer;

    # getter for: Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarContainer;->access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 435
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 439
    return-void
.end method
