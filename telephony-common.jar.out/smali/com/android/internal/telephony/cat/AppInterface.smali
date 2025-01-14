.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final ALPHA_STRING:Ljava/lang/String; = "alpha_string"

.field public static final CARD_STATUS:Ljava/lang/String; = "card_status"

.field public static final CAT_ALPHA_NOTIFY_ACTION:Ljava/lang/String; = "android.intent.action.stk.alpha_notify"

.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final CAT_ICC_STATUS_CHANGE:Ljava/lang/String; = "android.intent.action.stk.icc_status_change"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"

.field public static final CLEAR_DISPLAY_TEXT_CMD:Ljava/lang/String; = "android.intent.action.stk.clear_display_text"

.field public static final REFRESH_RESULT:Ljava/lang/String; = "refresh_result"

.field public static final STK_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_STK_COMMANDS"

.field public static final UTK_SETUP_EVENT_LIST_ACTION:Ljava/lang/String; = "android.intent.action.utk.setup_event_list"


# virtual methods
.method public abstract isCallDisConnReceived()Z
.end method

.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract onDBHandler(I)V
.end method

.method public abstract onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract onLaunchCachedSetupMenu()V
.end method

.method public abstract setAllCallDisConn(Z)V
.end method
