.class final Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorState"
.end annotation


# instance fields
.field mBaseColor:I

.field mChangingConfigurations:I

.field mUseColor:I


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;)V
    .locals 1
    .param p1, "state"    # Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget v0, p1, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mBaseColor:I

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mBaseColor:I

    .line 151
    iget v0, p1, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mUseColor:I

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mUseColor:I

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 162
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$ColorState;Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable$1;)V

    return-object v0
.end method
