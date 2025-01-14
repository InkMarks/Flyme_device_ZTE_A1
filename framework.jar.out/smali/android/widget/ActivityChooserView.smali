.class public Landroid/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;,
        Landroid/widget/ActivityChooserView$Callbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityChooserView"


# instance fields
.field private final mActivityChooserContent:Landroid/widget/LinearLayout;

.field private final mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

.field private final mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

.field private mDefaultActionButtonContentDescription:I

.field private final mDefaultActivityButton:Landroid/widget/FrameLayout;

.field private final mDefaultActivityButtonImage:Landroid/widget/ImageView;

.field private final mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field private mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field private mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Landroid/widget/ListPopupWindow;

.field private final mModelDataSetOberver:Landroid/database/DataSetObserver;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Landroid/view/ActionProvider;

.field private mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

.field private mRecentButtonEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 210
    const-class v0, Lcom/mediatek/common/media/IRCSePriorityExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/media/IRCSePriorityExt;

    iput-object v0, p0, Landroid/widget/ActivityChooserView;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v9, 0x10202bb

    const/4 v6, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    iput-object v8, p0, Landroid/widget/ActivityChooserView;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 135
    new-instance v5, Landroid/widget/ActivityChooserView$1;

    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$1;-><init>(Landroid/widget/ActivityChooserView;)V

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    .line 157
    new-instance v5, Landroid/widget/ActivityChooserView$2;

    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$2;-><init>(Landroid/widget/ActivityChooserView;)V

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 191
    iput v6, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 252
    sget-object v5, Lcom/android/internal/R$styleable;->ActivityChooserView:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 255
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 259
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 262
    .local v1, "expandActivityOverflowButtonDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 265
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x1090021

    invoke-virtual {v3, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 267
    new-instance v5, Landroid/widget/ActivityChooserView$Callbacks;

    invoke-direct {v5, p0, v8}, Landroid/widget/ActivityChooserView$Callbacks;-><init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$1;)V

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    .line 269
    const v5, 0x10202b9

    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    .line 270
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    .line 272
    const v5, 0x10202bc

    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 273
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    if-nez v5, :cond_0

    .line 276
    const-string v5, "ActivityChooserView"

    const-string v6, "Rcse Plugin is null, so register for long click listener"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 280
    :cond_0
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    .line 282
    const v5, 0x10202ba

    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 283
    .local v2, "expandButton":Landroid/widget/FrameLayout;
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    new-instance v5, Landroid/widget/ActivityChooserView$3;

    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$3;-><init>(Landroid/widget/ActivityChooserView;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 291
    new-instance v5, Landroid/widget/ActivityChooserView$4;

    invoke-direct {v5, p0, v2}, Landroid/widget/ActivityChooserView$4;-><init>(Landroid/widget/ActivityChooserView;Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 309
    iput-object v2, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    .line 311
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    .line 313
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    new-instance v5, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-direct {v5, p0, v8}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$1;)V

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 316
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    new-instance v6, Landroid/widget/ActivityChooserView$5;

    invoke-direct {v6, p0}, Landroid/widget/ActivityChooserView$5;-><init>(Landroid/widget/ActivityChooserView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 325
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x2

    const v6, 0x1050009

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ActivityChooserView;->mListPopupMaxWidth:I

    .line 328
    iput-boolean v7, p0, Landroid/widget/ActivityChooserView;->mRecentButtonEnabled:Z

    .line 329
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ActivityChooserView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/ActivityChooserView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget v0, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/ActivityChooserView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView;->mRecentButtonEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ActivityChooserView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->updateAppearance()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/ActivityChooserView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/ActivityChooserView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    return v0
.end method

.method static synthetic access$702(Landroid/widget/ActivityChooserView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    return p1
.end method

.method static synthetic access$800(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private getListPopupWindow()Landroid/widget/ListPopupWindow;
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 566
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    .line 567
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 568
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 569
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 570
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 571
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 573
    :cond_0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method private showPopupUnchecked(I)V
    .locals 10
    .param p1, "maxActivityCount"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 400
    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v8}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v8

    if-nez v8, :cond_0

    .line 401
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "No data model. Did you call #setDataModel?"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 404
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 406
    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    move v2, v6

    .line 409
    .local v2, "defaultActivityButtonShown":Z
    :goto_0
    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v8}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v0

    .line 410
    .local v0, "activityCount":I
    if-eqz v2, :cond_5

    move v3, v6

    .line 412
    .local v3, "maxActivityCountOffset":I
    :goto_1
    iget-boolean v8, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-eqz v8, :cond_6

    move v5, v6

    .line 413
    .local v5, "selectingDefault":I
    :goto_2
    const v8, 0x7fffffff

    if-eq p1, v8, :cond_7

    add-int v8, v0, v5

    add-int v9, p1, v3

    if-le v8, v9, :cond_7

    .line 415
    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v8, v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 416
    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    .line 422
    :goto_3
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v4

    .line 423
    .local v4, "popupWindow":Landroid/widget/ListPopupWindow;
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v8

    if-nez v8, :cond_3

    .line 424
    iget-boolean v8, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-nez v8, :cond_1

    if-nez v2, :cond_8

    .line 425
    :cond_1
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v6, v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    .line 429
    :goto_4
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ActivityChooserView;->mListPopupMaxWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 430
    .local v1, "contentWidth":I
    invoke-virtual {v4, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 431
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V

    .line 432
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    if-eqz v7, :cond_2

    .line 433
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    invoke-virtual {v7, v6}, Landroid/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 435
    :cond_2
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    const v8, 0x1040598

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 438
    .end local v1    # "contentWidth":I
    :cond_3
    return-void

    .end local v0    # "activityCount":I
    .end local v2    # "defaultActivityButtonShown":Z
    .end local v3    # "maxActivityCountOffset":I
    .end local v4    # "popupWindow":Landroid/widget/ListPopupWindow;
    .end local v5    # "selectingDefault":I
    :cond_4
    move v2, v7

    .line 406
    goto :goto_0

    .restart local v0    # "activityCount":I
    .restart local v2    # "defaultActivityButtonShown":Z
    :cond_5
    move v3, v7

    .line 410
    goto :goto_1

    .restart local v3    # "maxActivityCountOffset":I
    :cond_6
    move v5, v7

    .line 412
    goto :goto_2

    .line 418
    .restart local v5    # "selectingDefault":I
    :cond_7
    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v8, v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 419
    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v8, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    goto :goto_3

    .line 427
    .restart local v4    # "popupWindow":Landroid/widget/ListPopupWindow;
    :cond_8
    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v8, v7, v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    goto :goto_4
.end method

.method private updateAppearance()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 581
    iget-object v9, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v9}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v9

    if-lez v9, :cond_1

    .line 582
    iget-object v9, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 587
    :goto_0
    iget-object v9, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v9}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v1

    .line 588
    .local v1, "activityCount":I
    iget-object v9, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v9}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getHistorySize()I

    move-result v4

    .line 590
    .local v4, "historySize":I
    const/4 v2, 0x0

    .line 591
    .local v2, "checkCount":Z
    iget-object v9, p0, Landroid/widget/ActivityChooserView;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    if-eqz v9, :cond_3

    .line 592
    const-string v9, "ActivityChooserView"

    const-string v10, "RCSe Plugin not null, No need to check previous history"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    if-lt v1, v7, :cond_2

    move v2, v7

    .line 600
    :goto_1
    iget-boolean v9, p0, Landroid/widget/ActivityChooserView;->mRecentButtonEnabled:Z

    if-ne v9, v7, :cond_6

    if-eqz v2, :cond_6

    .line 601
    iget-object v9, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 602
    iget-object v9, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v9}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 603
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v9, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 604
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    iget v9, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    if-eqz v9, :cond_0

    .line 606
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 607
    .local v5, "label":Ljava/lang/CharSequence;
    iget-object v9, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    iget v10, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v8

    invoke-virtual {v9, v10, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "contentDescription":Ljava/lang/String;
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 620
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v3    # "contentDescription":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_2
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    .line 621
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 626
    :goto_3
    const-string v7, "ActivityChooserView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAppearance, mRecentButtonEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/widget/ActivityChooserView;->mRecentButtonEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", checkCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", backtrace = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x5

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void

    .line 584
    .end local v1    # "activityCount":I
    .end local v2    # "checkCount":Z
    .end local v4    # "historySize":I
    :cond_1
    iget-object v9, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto/16 :goto_0

    .restart local v1    # "activityCount":I
    .restart local v2    # "checkCount":Z
    .restart local v4    # "historySize":I
    :cond_2
    move v2, v8

    .line 594
    goto/16 :goto_1

    .line 596
    :cond_3
    if-eq v1, v7, :cond_4

    if-le v1, v7, :cond_5

    if-lez v4, :cond_5

    :cond_4
    move v2, v7

    :goto_4
    goto/16 :goto_1

    :cond_5
    move v2, v8

    goto :goto_4

    .line 612
    :cond_6
    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 615
    if-lez v1, :cond_0

    .line 616
    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_2

    .line 623
    :cond_7
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 448
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 449
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 453
    .end local v0    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getDataModel()Landroid/widget/ActivityChooserModel;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    return-object v0
.end method

.method public isShowingPopup()Z
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 467
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 469
    const-string v1, "ActivityChooserView"

    const-string/jumbo v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 472
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    .line 473
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 475
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 476
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 480
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 482
    const-string v2, "ActivityChooserView"

    const-string/jumbo v3, "onDetachedFromWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 485
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    .line 486
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Landroid/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 489
    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 492
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 493
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 495
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 496
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 514
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 515
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 518
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 500
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    .line 504
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 508
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 509
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 510
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 746
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 747
    if-eqz p1, :cond_0

    .line 748
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 750
    :cond_0
    return-void
.end method

.method public setActivityChooserModel(Landroid/widget/ActivityChooserModel;)V
    .locals 1
    .param p1, "dataModel"    # Landroid/widget/ActivityChooserModel;

    .prologue
    .line 335
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Landroid/widget/ActivityChooserModel;)V

    .line 336
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 338
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->showPopup()Z

    .line 340
    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    .line 556
    iput p1, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    .line 557
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 368
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 354
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .prologue
    .line 542
    iput p1, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 543
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 530
    iput-object p1, p0, Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 531
    return-void
.end method

.method public setProvider(Landroid/view/ActionProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/view/ActionProvider;

    .prologue
    .line 377
    iput-object p1, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    .line 378
    return-void
.end method

.method public setRecentButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 758
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView;->mRecentButtonEnabled:Z

    .line 759
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->updateAppearance()V

    .line 760
    return-void
.end method

.method public showPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    if-nez v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 389
    :cond_1
    iput-boolean v0, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 390
    iget v0, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-direct {p0, v0}, Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 391
    const/4 v0, 0x1

    goto :goto_0
.end method
