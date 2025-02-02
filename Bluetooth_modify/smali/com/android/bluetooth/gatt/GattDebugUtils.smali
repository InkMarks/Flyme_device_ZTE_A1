.class Lcom/android/bluetooth/gatt/GattDebugUtils;
.super Ljava/lang/Object;
.source "GattDebugUtils.java"


# static fields
.field private static final ACTION_GATT_PAIRING_CONFIG:Ljava/lang/String; = "android.bluetooth.action.GATT_PAIRING_CONFIG"

.field private static final ACTION_GATT_TEST_CONNECT:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_CONNECT"

.field private static final ACTION_GATT_TEST_DISCONNECT:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_DISCONNECT"

.field private static final ACTION_GATT_TEST_DISCOVER:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_DISCOVER"

.field private static final ACTION_GATT_TEST_ENABLE:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_ENABLE"

.field private static final ACTION_GATT_TEST_USAGE:Ljava/lang/String; = "android.bluetooth.action.GATT_TEST_USAGE"

.field private static final DEBUG_ADMIN:Z = true

.field private static final EXTRA_ADDRESS:Ljava/lang/String; = "address"

.field private static final EXTRA_ADDR_TYPE:Ljava/lang/String; = "addr_type"

.field private static final EXTRA_AUTH_REQ:Ljava/lang/String; = "auth_req"

.field private static final EXTRA_EHANDLE:Ljava/lang/String; = "end"

.field private static final EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final EXTRA_INIT_KEY:Ljava/lang/String; = "init_key"

.field private static final EXTRA_IO_CAP:Ljava/lang/String; = "io_cap"

.field private static final EXTRA_MAX_KEY:Ljava/lang/String; = "max_key"

.field private static final EXTRA_RESP_KEY:Ljava/lang/String; = "resp_key"

.field private static final EXTRA_SHANDLE:Ljava/lang/String; = "start"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_UUID:Ljava/lang/String; = "uuid"

.field private static final TAG:Ljava/lang/String; = "BtGatt.DebugUtils"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "default_value"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 127
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 128
    .local v2, "uuid":Ljava/lang/Object;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 137
    .end local p2    # "default_value":I
    :goto_1
    return p2

    .line 127
    .end local v2    # "uuid":Ljava/lang/Object;
    .restart local p2    # "default_value":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 132
    .restart local v2    # "uuid":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 137
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    goto :goto_1
.end method

.method private static getUuidExtra(Landroid/content/Intent;)Ljava/util/UUID;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    const-string v1, "uuid"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "uuidStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 149
    const-string v1, "0000%s-0000-1000-8000-00805f9b34fb"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleDebugAction(Lcom/android/bluetooth/gatt/GattService;Landroid/content/Intent;)Z
    .locals 25
    .param p0, "svc"    # Lcom/android/bluetooth/gatt/GattService;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    .line 75
    .local v23, "action":Ljava/lang/String;
    const-string v1, "BtGatt.DebugUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDebugAction() action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v1, "android.bluetooth.action.GATT_TEST_USAGE"

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {}, Lcom/android/bluetooth/gatt/GattDebugUtils;->logUsageInfo()V

    .line 117
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 84
    :cond_0
    const-string v1, "android.bluetooth.action.GATT_TEST_ENABLE"

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    const-string v1, "enable"

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 86
    .local v24, "bEnable":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v24, :cond_1

    const/4 v5, 0x1

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 88
    .end local v24    # "bEnable":Z
    :cond_2
    const-string v1, "android.bluetooth.action.GATT_TEST_CONNECT"

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    const-string v1, "address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "address":Ljava/lang/String;
    const-string v1, "type"

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 91
    .local v5, "type":I
    const-string v1, "addr_type"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 92
    .local v6, "addr_type":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V

    goto :goto_0

    .line 94
    .end local v4    # "address":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v6    # "addr_type":I
    :cond_3
    const-string v1, "android.bluetooth.action.GATT_TEST_DISCONNECT"

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v15}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V

    goto :goto_0

    .line 97
    :cond_4
    const-string v1, "android.bluetooth.action.GATT_TEST_DISCOVER"

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getUuidExtra(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v9

    .line 99
    .local v9, "uuid":Ljava/util/UUID;
    const-string v1, "type"

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 100
    .restart local v5    # "type":I
    const-string v1, "start"

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v12

    .line 101
    .local v12, "shdl":I
    const-string v1, "end"

    const v2, 0xffff

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/gatt/GattDebugUtils;->getHandleExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v13

    .line 102
    .local v13, "ehdl":I
    const/4 v8, 0x4

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move v11, v5

    invoke-virtual/range {v7 .. v15}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V

    goto/16 :goto_0

    .line 104
    .end local v5    # "type":I
    .end local v9    # "uuid":Ljava/util/UUID;
    .end local v12    # "shdl":I
    .end local v13    # "ehdl":I
    :cond_5
    const-string v1, "android.bluetooth.action.GATT_PAIRING_CONFIG"

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 105
    const-string v1, "auth_req"

    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 106
    .local v18, "auth_req":I
    const-string v1, "io_cap"

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 107
    .local v19, "io_cap":I
    const-string v1, "init_key"

    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 108
    .local v20, "init_key":I
    const-string v1, "resp_key"

    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 109
    .local v21, "resp_key":I
    const-string v1, "max_key"

    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 110
    .local v22, "max_key":I
    const/16 v15, 0xf0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v22}, Lcom/android/bluetooth/gatt/GattService;->gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V

    goto/16 :goto_0

    .line 114
    .end local v18    # "auth_req":I
    .end local v19    # "io_cap":I
    .end local v20    # "init_key":I
    .end local v21    # "resp_key":I
    .end local v22    # "max_key":I
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private static logUsageInfo()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "------------ GATT TEST ACTIONS  ----------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "\nGATT_TEST_ENABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, "\n  [--ez enable <bool>] Enable or disable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "\n                       defaults to true (enable).\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, "\nGATT_TEST_CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, "\n   --es address <bda>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "\n  [--ei addr_type <type>] Possible values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, "\n                         0 = Static (default)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, "\n                         1 = Random\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "\n  [--ei type <type>]   Default is 2 (LE Only)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, "\nGATT_TEST_DISCONNECT\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "\nGATT_TEST_DISCOVER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, "\n  [--ei type <type>]   Possible values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "\n                         1 = Discover all services (default)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "\n                         2 = Discover services by UUID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "\n                         3 = Discover included services"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "\n                         4 = Discover characteristics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "\n                         5 = Discover descriptors\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "\n  [--es uuid <uuid>]   Optional; Can be either full 128-bit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "\n                       UUID hex string, or 4 hex characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "\n                       for 16-bit UUIDs.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "\n  [--ei start <hdl>]   Start of handle range (default 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, "\n  [--ei end <hdl>]     End of handle range (default 65355)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "\n    or"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "\n  [--es start <hdl>]   Start of handle range (hex format)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "\n  [--es end <hdl>]     End of handle range (hex format)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "\nGATT_PAIRING_CONFIG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "\n  [--ei auth_req]      Authentication flag (default 5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "\n  [--ei io_cap]        IO capabilities (default 4)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "\n  [--ei init_key]      Initial key size (default 7)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "\n  [--ei resp_key]      Response key size (default 7)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "\n  [--ei max_key]       Maximum key size (default 16)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, "\n------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "BtGatt.DebugUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method
