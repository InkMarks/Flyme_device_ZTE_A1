.class public final enum Lcom/android/internal/telephony/CommandException$Error;
.super Ljava/lang/Enum;
.source "CommandException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CommandException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/CommandException$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum ADDITIONAL_NUMBER_SAVE_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum ADDITIONAL_NUMBER_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum ADN_LIST_NOT_EXIST:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum BT_SAP_CARD_REMOVED:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum BT_SAP_NOT_ACCESSIBLE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum BT_SAP_UNDEFINED:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum CALL_BARRED:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum CC_CALL_HOLD_FAILED_CAUSED_BY_TERMINATED:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum DIAL_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum EMAIL_NAME_TOOLONG:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum EMAIL_SIZE_LIMIT:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum MODE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum NOT_READY:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum REQUEST_CANCELLED:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum TEXT_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum UT_UNKNOWN_HOST:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum UT_XCAP_403_FORBIDDEN:Lcom/android/internal/telephony/CommandException$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "INVALID_RESPONSE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "RADIO_NOT_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "GENERIC_FAILURE"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "PASSWORD_INCORRECT"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "SIM_PIN2"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "SIM_PUK2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "REQUEST_NOT_SUPPORTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "REQUEST_CANCELLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_CANCELLED:Lcom/android/internal/telephony/CommandException$Error;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "OP_NOT_ALLOWED_BEFORE_REG_NW"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "SMS_FAIL_RETRY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "SIM_ABSENT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "SUBSCRIPTION_NOT_AVAILABLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "MODE_NOT_SUPPORTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->MODE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "FDN_CHECK_FAILURE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "ILLEGAL_SIM_OR_ME"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "MISSING_RESOURCE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "NO_SUCH_ELEMENT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "SUBSCRIPTION_NOT_SUPPORTED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "DIAL_MODIFIED_TO_USSD"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "DIAL_MODIFIED_TO_SS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "DIAL_MODIFIED_TO_DIAL"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "USSD_MODIFIED_TO_DIAL"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "USSD_MODIFIED_TO_SS"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "USSD_MODIFIED_TO_USSD"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "SS_MODIFIED_TO_DIAL"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "SS_MODIFIED_TO_USSD"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "SS_MODIFIED_TO_SS"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "INVALID_PARAMETER"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "DIAL_STRING_TOO_LONG"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->DIAL_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "TEXT_STRING_TOO_LONG"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->TEXT_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "SIM_MEM_FULL"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "CALL_BARRED"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->CALL_BARRED:Lcom/android/internal/telephony/CommandException$Error;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "UT_XCAP_403_FORBIDDEN"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_403_FORBIDDEN:Lcom/android/internal/telephony/CommandException$Error;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "UT_UNKNOWN_HOST"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->UT_UNKNOWN_HOST:Lcom/android/internal/telephony/CommandException$Error;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "BT_SAP_UNDEFINED"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_UNDEFINED:Lcom/android/internal/telephony/CommandException$Error;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "BT_SAP_NOT_ACCESSIBLE"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_NOT_ACCESSIBLE:Lcom/android/internal/telephony/CommandException$Error;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "BT_SAP_CARD_REMOVED"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_CARD_REMOVED:Lcom/android/internal/telephony/CommandException$Error;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "ADDITIONAL_NUMBER_STRING_TOO_LONG"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->ADDITIONAL_NUMBER_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "ADDITIONAL_NUMBER_SAVE_FAILURE"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->ADDITIONAL_NUMBER_SAVE_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "ADN_LIST_NOT_EXIST"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->ADN_LIST_NOT_EXIST:Lcom/android/internal/telephony/CommandException$Error;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "EMAIL_SIZE_LIMIT"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->EMAIL_SIZE_LIMIT:Lcom/android/internal/telephony/CommandException$Error;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "EMAIL_NAME_TOOLONG"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->EMAIL_NAME_TOOLONG:Lcom/android/internal/telephony/CommandException$Error;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "NOT_READY"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->NOT_READY:Lcom/android/internal/telephony/CommandException$Error;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "SPECAIL_UT_COMMAND_NOT_SUPPORTED"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    const-string v1, "CC_CALL_HOLD_FAILED_CAUSED_BY_TERMINATED"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->CC_CALL_HOLD_FAILED_CAUSED_BY_TERMINATED:Lcom/android/internal/telephony/CommandException$Error;

    .line 34
    const/16 v0, 0x2e

    new-array v0, v0, [Lcom/android/internal/telephony/CommandException$Error;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_CANCELLED:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->MODE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->DIAL_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->TEXT_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->CALL_BARRED:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_403_FORBIDDEN:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->UT_UNKNOWN_HOST:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_UNDEFINED:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_NOT_ACCESSIBLE:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->BT_SAP_CARD_REMOVED:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->ADDITIONAL_NUMBER_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->ADDITIONAL_NUMBER_SAVE_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->ADN_LIST_NOT_EXIST:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->EMAIL_SIZE_LIMIT:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->EMAIL_NAME_TOOLONG:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NOT_READY:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->CC_CALL_HOLD_FAILED_CAUSED_BY_TERMINATED:Lcom/android/internal/telephony/CommandException$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->$VALUES:[Lcom/android/internal/telephony/CommandException$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CommandException$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/android/internal/telephony/CommandException$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CommandException$Error;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/CommandException$Error;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->$VALUES:[Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/CommandException$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/CommandException$Error;

    return-object v0
.end method
