.class Lcom/zte/mifavor/preference/GenericInflater$FactoryMerger;
.super Ljava/lang/Object;
.source "GenericInflater.java"

# interfaces
.implements Lcom/zte/mifavor/preference/GenericInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/GenericInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/zte/mifavor/preference/GenericInflater$Factory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mF1:Lcom/zte/mifavor/preference/GenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zte/mifavor/preference/GenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mF2:Lcom/zte/mifavor/preference/GenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zte/mifavor/preference/GenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/GenericInflater$Factory;Lcom/zte/mifavor/preference/GenericInflater$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/mifavor/preference/GenericInflater$Factory",
            "<TT;>;",
            "Lcom/zte/mifavor/preference/GenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater$FactoryMerger;, "Lcom/zte/mifavor/preference/GenericInflater$FactoryMerger<TT;>;"
    .local p1, "f1":Lcom/zte/mifavor/preference/GenericInflater$Factory;, "Lcom/zte/mifavor/preference/GenericInflater$Factory<TT;>;"
    .local p2, "f2":Lcom/zte/mifavor/preference/GenericInflater$Factory;, "Lcom/zte/mifavor/preference/GenericInflater$Factory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/zte/mifavor/preference/GenericInflater$FactoryMerger;->mF1:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    .line 90
    iput-object p2, p0, Lcom/zte/mifavor/preference/GenericInflater$FactoryMerger;->mF2:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    .line 91
    return-void
.end method


# virtual methods
.method public onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater$FactoryMerger;, "Lcom/zte/mifavor/preference/GenericInflater$FactoryMerger<TT;>;"
    iget-object v1, p0, Lcom/zte/mifavor/preference/GenericInflater$FactoryMerger;->mF1:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Lcom/zte/mifavor/preference/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 96
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .restart local v0    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/preference/GenericInflater$FactoryMerger;->mF2:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Lcom/zte/mifavor/preference/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
