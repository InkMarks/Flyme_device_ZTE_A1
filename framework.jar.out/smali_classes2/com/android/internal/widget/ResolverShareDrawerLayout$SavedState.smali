.class Lcom/android/internal/widget/ResolverShareDrawerLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ResolverShareDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverShareDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/widget/ResolverShareDrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field open:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 724
    new-instance v0, Lcom/android/internal/widget/ResolverShareDrawerLayout$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/widget/ResolverShareDrawerLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ResolverShareDrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 714
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverShareDrawerLayout$SavedState;->open:Z

    .line 716
    return-void

    .line 715
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/widget/ResolverShareDrawerLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/widget/ResolverShareDrawerLayout$1;

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverShareDrawerLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 710
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 711
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 720
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 721
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverShareDrawerLayout$SavedState;->open:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    return-void

    .line 721
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
