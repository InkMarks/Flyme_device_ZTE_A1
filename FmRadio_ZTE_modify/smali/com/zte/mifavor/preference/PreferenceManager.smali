.class public Lcom/zte/mifavor/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;,
        Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;,
        Lcom/zte/mifavor/preference/PreferenceManager$OnActivityResultListener;,
        Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field public static final METADATA_KEY_PREFERENCES:Ljava/lang/String; = "android.preference"

.field private static final TAG:Ljava/lang/String; = "PreferenceManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityDestroyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/mifavor/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityStopListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFragment:Lcom/zte/mifavor/preference/PreferenceFragment;

.field private mNextId:J

.field private mNextRequestCode:I

.field private mNoCommit:Z

.field private mOnPreferenceTreeClickListener:Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceScreen:Lcom/zte/mifavor/preference/PreferenceScreen;

.field private mPreferencesScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "firstRequestCode"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mNextId:J

    .line 145
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    .line 146
    iput p2, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mNextRequestCode:I

    .line 148
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->init(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mNextId:J

    .line 160
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->init(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method private dismissAllScreens()V
    .locals 3

    .prologue
    .line 772
    monitor-enter p0

    .line 774
    :try_start_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v2, :cond_1

    .line 775
    monitor-exit p0

    .line 785
    :cond_0
    return-void

    .line 778
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 779
    .local v1, "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 780
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 783
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 782
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 780
    .end local v0    # "i":I
    .end local v1    # "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    invoke-static {p0}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 166
    invoke-static {p1}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "readAgain"    # Z

    .prologue
    .line 444
    invoke-static {p0}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/zte/mifavor/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 446
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;
    .param p2, "sharedPreferencesMode"    # I
    .param p3, "resId"    # I
    .param p4, "readAgain"    # Z

    .prologue
    const/4 v5, 0x0

    .line 478
    const-string v4, "_has_set_default_values"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 481
    .local v0, "defaultValueSp":Landroid/content/SharedPreferences;
    if-nez p4, :cond_0

    const-string v4, "_has_set_default_values"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 482
    :cond_0
    new-instance v2, Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 483
    .local v2, "pm":Lcom/zte/mifavor/preference/PreferenceManager;
    invoke-virtual {v2, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v2, p2}, Lcom/zte/mifavor/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 485
    const/4 v4, 0x0

    invoke-virtual {v2, p0, p3, v4}, Lcom/zte/mifavor/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/zte/mifavor/preference/PreferenceScreen;)Lcom/zte/mifavor/preference/PreferenceScreen;

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "_has_set_default_values"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 490
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pm":Lcom/zte/mifavor/preference/PreferenceManager;
    :cond_1
    :goto_0
    return-void

    .line 491
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "pm":Lcom/zte/mifavor/preference/PreferenceManager;
    :catch_0
    move-exception v3

    .line 495
    .local v3, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setNoCommit(Z)V
    .locals 2
    .param p1, "noCommit"    # Z

    .prologue
    .line 533
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mNoCommit:Z

    .line 544
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 540
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method addPreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/DialogInterface;

    .prologue
    .line 738
    monitor-enter p0

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    monitor-exit p0

    .line 746
    return-void

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createPreferenceScreen(Landroid/content/Context;)Lcom/zte/mifavor/preference/PreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/zte/mifavor/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 283
    .local v0, "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    invoke-virtual {v0, p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->onAttachedToHierarchy(Lcom/zte/mifavor/preference/PreferenceManager;)V

    .line 284
    return-object v0
.end method

.method dispatchActivityDestroy()V
    .locals 5

    .prologue
    .line 705
    const/4 v2, 0x0

    .line 707
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;>;"
    monitor-enter p0

    .line 708
    :try_start_0
    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 709
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;>;"
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;>;"
    move-object v2, v3

    .line 711
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;>;"
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    if-eqz v2, :cond_1

    .line 714
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 715
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 716
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;

    invoke-interface {v4}, Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;->onActivityDestroy()V

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 721
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceManager;->dismissAllScreens()V

    .line 722
    return-void
.end method

.method dispatchActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 607
    monitor-enter p0

    .line 608
    :try_start_0
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v3, :cond_1

    monitor-exit p0

    .line 618
    :cond_0
    return-void

    .line 609
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 610
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/PreferenceManager$OnActivityResultListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 613
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 614
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/preference/PreferenceManager$OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/zte/mifavor/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/PreferenceManager$OnActivityResultListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method dispatchActivityStop()V
    .locals 4

    .prologue
    .line 659
    monitor-enter p0

    .line 660
    :try_start_0
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v3, :cond_1

    monitor-exit p0

    .line 668
    :cond_0
    return-void

    .line 661
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 662
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 665
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 666
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;

    invoke-interface {v3}, Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;->onActivityStop()V

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method dispatchNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceManager;->dismissAllScreens()V

    .line 766
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferenceScreen:Lcom/zte/mifavor/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferenceScreen:Lcom/zte/mifavor/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 517
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method getFragment()Lcom/zte/mifavor/preference/PreferenceFragment;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mFragment:Lcom/zte/mifavor/preference/PreferenceFragment;

    return-object v0
.end method

.method getNextId()J
    .locals 4

    .prologue
    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    iget-wide v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getNextRequestCode()I
    .locals 2

    .prologue
    .line 732
    monitor-enter p0

    .line 733
    :try_start_0
    iget v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mNextRequestCode:I

    monitor-exit p0

    return v0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOnPreferenceTreeClickListener()Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferenceScreen:Lcom/zte/mifavor/preference/PreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method inflateFromIntent(Landroid/content/Intent;Lcom/zte/mifavor/preference/PreferenceScreen;)Lcom/zte/mifavor/preference/PreferenceScreen;
    .locals 13
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .param p2, "rootPreferences"    # Lcom/zte/mifavor/preference/PreferenceScreen;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 213
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 215
    .local v5, "inflatedRes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 216
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 217
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 219
    .local v7, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    const-string v10, "android.preference"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 215
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 225
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "android.preference"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, "uniqueResId":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 229
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    :try_start_0
    iget-object v10, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mContext:Landroid/content/Context;

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 240
    .local v2, "context":Landroid/content/Context;
    new-instance v6, Lcom/zte/mifavor/preference/PreferenceInflater;

    invoke-direct {v6, v2, p0}, Lcom/zte/mifavor/preference/PreferenceInflater;-><init>(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceManager;)V

    .line 241
    .local v6, "inflater":Lcom/zte/mifavor/preference/PreferenceInflater;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.preference"

    invoke-virtual {v1, v10, v11}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 243
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v10, 0x1

    invoke-virtual {v6, v8, p2, v10}, Lcom/zte/mifavor/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/mifavor/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "rootPreferences":Lcom/zte/mifavor/preference/PreferenceScreen;
    check-cast p2, Lcom/zte/mifavor/preference/PreferenceScreen;

    .line 245
    .restart local p2    # "rootPreferences":Lcom/zte/mifavor/preference/PreferenceScreen;
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 234
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "inflater":Lcom/zte/mifavor/preference/PreferenceInflater;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v3

    .line 235
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "PreferenceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not create context for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "metaData":Landroid/os/Bundle;
    .end local v9    # "uniqueResId":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->onAttachedToHierarchy(Lcom/zte/mifavor/preference/PreferenceManager;)V

    .line 251
    return-object p2
.end method

.method public inflateFromResource(Landroid/content/Context;ILcom/zte/mifavor/preference/PreferenceScreen;)Lcom/zte/mifavor/preference/PreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "rootPreferences"    # Lcom/zte/mifavor/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x1

    .line 269
    invoke-direct {p0, v1}, Lcom/zte/mifavor/preference/PreferenceManager;->setNoCommit(Z)V

    .line 271
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceInflater;

    invoke-direct {v0, p1, p0}, Lcom/zte/mifavor/preference/PreferenceInflater;-><init>(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceManager;)V

    .line 272
    .local v0, "inflater":Lcom/zte/mifavor/preference/PreferenceInflater;
    invoke-virtual {v0, p2, p3, v1}, Lcom/zte/mifavor/preference/PreferenceInflater;->inflate(ILcom/zte/mifavor/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "rootPreferences":Lcom/zte/mifavor/preference/PreferenceScreen;
    check-cast p3, Lcom/zte/mifavor/preference/PreferenceScreen;

    .line 273
    .restart local p3    # "rootPreferences":Lcom/zte/mifavor/preference/PreferenceScreen;
    invoke-virtual {p3, p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->onAttachedToHierarchy(Lcom/zte/mifavor/preference/PreferenceManager;)V

    .line 276
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/zte/mifavor/preference/PreferenceManager;->setNoCommit(Z)V

    .line 278
    return-object p3
.end method

.method registerOnActivityDestroyListener(Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;

    .prologue
    .line 676
    monitor-enter p0

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_1
    monitor-exit p0

    .line 685
    return-void

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerOnActivityResultListener(Lcom/zte/mifavor/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/zte/mifavor/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    .line 577
    monitor-enter p0

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_1
    monitor-exit p0

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnActivityStopListener(Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;

    .prologue
    .line 627
    monitor-enter p0

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_1
    monitor-exit p0

    .line 636
    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removePreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/DialogInterface;

    .prologue
    .line 749
    monitor-enter p0

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 752
    monitor-exit p0

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 756
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setFragment(Lcom/zte/mifavor/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/zte/mifavor/preference/PreferenceFragment;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mFragment:Lcom/zte/mifavor/preference/PreferenceFragment;

    .line 174
    return-void
.end method

.method setOnPreferenceTreeClickListener(Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .line 795
    return-void
.end method

.method setPreferences(Lcom/zte/mifavor/preference/PreferenceScreen;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/zte/mifavor/preference/PreferenceScreen;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferenceScreen:Lcom/zte/mifavor/preference/PreferenceScreen;

    if-eq p1, v0, :cond_0

    .line 398
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mPreferenceScreen:Lcom/zte/mifavor/preference/PreferenceScreen;

    .line 399
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 1
    .param p1, "sharedPreferencesMode"    # I

    .prologue
    .line 340
    iput p1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mSharedPreferencesMode:I

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 342
    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 319
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mNoCommit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method unregisterOnActivityDestroyListener(Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;

    .prologue
    .line 693
    monitor-enter p0

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 697
    :cond_0
    monitor-exit p0

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unregisterOnActivityResultListener(Lcom/zte/mifavor/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/zte/mifavor/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    .line 594
    monitor-enter p0

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 598
    :cond_0
    monitor-exit p0

    .line 599
    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnActivityStopListener(Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;

    .prologue
    .line 645
    monitor-enter p0

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 649
    :cond_0
    monitor-exit p0

    .line 650
    return-void

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
