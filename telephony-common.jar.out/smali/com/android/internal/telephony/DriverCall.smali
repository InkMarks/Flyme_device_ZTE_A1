.class public Lcom/android/internal/telephony/DriverCall;
.super Ljava/lang/Object;
.source "DriverCall.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DriverCall$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/DriverCall;",
        ">;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DriverCall"


# instance fields
.field public TOA:I

.field public als:I

.field public callMode:I

.field public index:I

.field public isMT:Z

.field public isMpty:Z

.field public isVideo:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public pau:Ljava/lang/String;

.field public state:Lcom/android/internal/telephony/DriverCall$State;

.field public uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method static fromCLCCLine(Ljava/lang/String;)Lcom/android/internal/telephony/DriverCall;
    .locals 8
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 71
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 75
    .local v2, "ret":Lcom/android/internal/telephony/DriverCall;
    new-instance v1, Lcom/android/internal/telephony/ATResponseParser;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ATResponseParser;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "p":Lcom/android/internal/telephony/ATResponseParser;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 79
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextBoolean()Z

    move-result v6

    iput-boolean v6, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 80
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 82
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v6

    if-nez v6, :cond_2

    move v6, v4

    :goto_0
    iput-boolean v6, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 85
    const/16 v6, 0xa

    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v7

    if-ne v6, v7, :cond_3

    :goto_1
    iput-boolean v4, v2, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 87
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextBoolean()Z

    move-result v4

    iput-boolean v4, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 90
    const/4 v4, 0x1

    iput v4, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 92
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->hasMore()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 97
    iget-object v4, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 98
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 101
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 106
    iget-object v4, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v5, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/internal/telephony/ATParseEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v2    # "ret":Lcom/android/internal/telephony/DriverCall;
    :cond_1
    :goto_2
    return-object v2

    .restart local v2    # "ret":Lcom/android/internal/telephony/DriverCall;
    :cond_2
    move v6, v5

    .line 82
    goto :goto_0

    :cond_3
    move v4, v5

    .line 85
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Lcom/android/internal/telephony/ATParseEx;
    const-string v4, "DriverCall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid CLCC line: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 112
    goto :goto_2
.end method

.method public static presentationFromCLIP(I)I
    .locals 3
    .param p0, "cli"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .prologue
    .line 158
    packed-switch p0, :pswitch_data_0

    .line 164
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal presentation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_0
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 160
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 161
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 162
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;
    .locals 3
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .prologue
    .line 143
    packed-switch p0, :pswitch_data_0

    .line 151
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    .line 149
    :goto_0
    return-object v0

    .line 145
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 146
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 147
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 148
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 149
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/DriverCall;)I
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 175
    iget v0, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    iget v1, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ge v0, v1, :cond_0

    .line 176
    const/4 v0, -0x1

    .line 180
    :goto_0
    return v0

    .line 177
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    iget v1, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne v0, v1, :cond_1

    .line 178
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/android/internal/telephony/DriverCall;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DriverCall;->compareTo(Lcom/android/internal/telephony/DriverCall;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "toa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    if-eqz v0, :cond_0

    const-string v0, "conf"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eqz v0, :cond_1

    const-string v0, "mt"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->als:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    if-eqz v0, :cond_2

    const-string v0, "voc"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    if-eqz v0, :cond_3

    const-string v0, "vid"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v0, :cond_4

    const-string v0, "evp"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",cli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->callMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "norm"

    goto/16 :goto_0

    :cond_1
    const-string v0, "mo"

    goto :goto_1

    :cond_2
    const-string v0, "nonvoc"

    goto :goto_2

    :cond_3
    const-string v0, "nonvid"

    goto :goto_3

    :cond_4
    const-string v0, "noevp"

    goto :goto_4
.end method
