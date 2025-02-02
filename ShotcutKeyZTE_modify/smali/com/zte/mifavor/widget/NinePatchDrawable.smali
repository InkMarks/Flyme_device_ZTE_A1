.class public Lcom/zte/mifavor/widget/NinePatchDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NinePatchDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/NinePatchDrawable$1;,
        Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DITHER:Z


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mMutated:Z

.field private mNinePatch:Landroid/graphics/NinePatch;

.field private mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

.field private mOpticalInsets:Landroid/graphics/Insets;

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mTargetDensity:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 61
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    .line 65
    const/16 v0, 0xa0

    iput v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mTargetDensity:I

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "chunk"    # [B
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "opticalInsets"    # Landroid/graphics/Rect;
    .param p6, "srcName"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p2, p3, p6}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p4, p5}, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Lcom/zte/mifavor/widget/NinePatchDrawable;-><init>(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    .line 103
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    iget v1, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mTargetDensity:I

    iput v1, v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "chunk"    # [B
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "srcName"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p2, p3, p5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p4}, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Lcom/zte/mifavor/widget/NinePatchDrawable;-><init>(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    .line 91
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    iget v1, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mTargetDensity:I

    iput v1, v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "patch"    # Landroid/graphics/NinePatch;

    .prologue
    .line 121
    new-instance v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Lcom/zte/mifavor/widget/NinePatchDrawable;-><init>(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    .line 122
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    iget v1, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mTargetDensity:I

    iput v1, v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B
    .param p3, "padding"    # Landroid/graphics/Rect;
    .param p4, "srcName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p1, p2, p4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p3}, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/NinePatchDrawable;-><init>(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/widget/NinePatchDrawable;-><init>(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    .line 114
    return-void
.end method

.method private constructor <init>(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 455
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 61
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    .line 65
    const/16 v0, 0xa0

    iput v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mTargetDensity:I

    .line 456
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/NinePatchDrawable;->setNinePatchState(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    .line 457
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Lcom/zte/mifavor/widget/NinePatchDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Lcom/zte/mifavor/widget/NinePatchDrawable$1;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/NinePatchDrawable;-><init>(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private computeBitmapSize()V
    .locals 5

    .prologue
    .line 196
    iget-object v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v1

    .line 197
    .local v1, "sdensity":I
    iget v3, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mTargetDensity:I

    .line 198
    .local v3, "tdensity":I
    if-ne v1, v3, :cond_0

    .line 199
    iget-object v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mBitmapWidth:I

    .line 200
    iget-object v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mBitmapHeight:I

    .line 201
    iget-object v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    iget-object v4, v4, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    .line 218
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getWidth()I

    move-result v4

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iput v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mBitmapWidth:I

    .line 204
    iget-object v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v4

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iput v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mBitmapHeight:I

    .line 205
    iget-object v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    iget-object v4, v4, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    .line 206
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    .line 207
    .local v0, "dest":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    iget-object v2, v4, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 208
    .local v2, "src":Landroid/graphics/Rect;
    if-ne v0, v2, :cond_1

    .line 209
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "dest":Landroid/graphics/Rect;
    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v0    # "dest":Landroid/graphics/Rect;
    iput-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    .line 211
    :cond_1
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 212
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 213
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 214
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 216
    .end local v0    # "dest":Landroid/graphics/Rect;
    .end local v2    # "src":Landroid/graphics/Rect;
    :cond_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    iget-object v4, v4, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    invoke-static {v4, v1, v3}, Lcom/zte/mifavor/widget/NinePatchDrawable;->scaleFromDensity(Landroid/graphics/Insets;II)Landroid/graphics/Insets;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    goto :goto_0
.end method

.method private needsMirroring()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 310
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static scaleFromDensity(Landroid/graphics/Insets;II)Landroid/graphics/Insets;
    .locals 5
    .param p0, "insets"    # Landroid/graphics/Insets;
    .param p1, "sdensity"    # I
    .param p2, "tdensity"    # I

    .prologue
    .line 188
    iget v4, p0, Landroid/graphics/Insets;->left:I

    invoke-static {v4, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v1

    .line 189
    .local v1, "left":I
    iget v4, p0, Landroid/graphics/Insets;->top:I

    invoke-static {v4, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v3

    .line 190
    .local v3, "top":I
    iget v4, p0, Landroid/graphics/Insets;->right:I

    invoke-static {v4, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v2

    .line 191
    .local v2, "right":I
    iget v4, p0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v4, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    .line 192
    .local v0, "bottom":I
    invoke-static {v1, v3, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    return-object v4
.end method

.method private setNinePatchState(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    .line 127
    iget-object v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    .line 128
    iget-object v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    .line 129
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    iput v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mTargetDensity:I

    .line 132
    iget-boolean v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mDither:Z

    if-eqz v0, :cond_0

    .line 135
    iget-boolean v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mDither:Z

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->setDither(Z)V

    .line 137
    :cond_0
    iget-boolean v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->setAutoMirrored(Z)V

    .line 138
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->computeBitmapSize()V

    .line 141
    :cond_1
    return-void

    .line 129
    :cond_2
    iget v0, p1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 223
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->needsMirroring()Z

    move-result v1

    .line 224
    .local v1, "needsMirroring":Z
    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 227
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 228
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    iget-object v3, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v0, v3}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 231
    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 234
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 278
    const/16 v0, 0xff

    .line 280
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    iget v1, v1, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    .line 377
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/NinePatch;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 4

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->needsMirroring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->right:I

    iget-object v1, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->top:I

    iget-object v2, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->right:I

    iget-object v3, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->needsMirroring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 248
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    or-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    .line 328
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/NinePatch;->getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 383
    new-instance v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;-><init>(Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    .line 384
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mMutated:Z

    .line 387
    :cond_0
    return-object p0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 271
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatchState:Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;

    iput-boolean p1, v0, Lcom/zte/mifavor/widget/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    .line 307
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 290
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 296
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 301
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 321
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->invalidateSelf()V

    .line 322
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 178
    iget v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mTargetDensity:I

    if-eq p1, v0, :cond_2

    .line 179
    if-nez p1, :cond_0

    const/16 p1, 0xa0

    .end local p1    # "density":I
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mTargetDensity:I

    .line 180
    iget-object v0, p0, Lcom/zte/mifavor/widget/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->computeBitmapSize()V

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->invalidateSelf()V

    .line 185
    :cond_2
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->setTargetDensity(I)V

    .line 155
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 166
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NinePatchDrawable;->setTargetDensity(I)V

    .line 167
    return-void
.end method
