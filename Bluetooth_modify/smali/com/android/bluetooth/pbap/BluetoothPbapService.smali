.class public Lcom/android/bluetooth/pbap/BluetoothPbapService;
.super Landroid/app/Service;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final AUTH_CANCELLED_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authcancelled"

.field public static final AUTH_CHALL_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authchall"

.field public static final AUTH_RESPONSE_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authresponse"

.field private static final AUTH_TIMEOUT:I = 0x3

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final DEBUG:Z = true

.field private static final DICONNECT_PBAP_IOT:Z = true

.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "com.android.bluetooth.pbap.sessionkey"

.field public static final MSG_ACQUIRE_WAKE_LOCK:I = 0x138c

.field public static final MSG_OBEX_AUTH_CHALL:I = 0x138b

.field public static final MSG_OBEX_START_OBEX:I = 0x1392

.field public static final MSG_RELEASE_WAKE_LOCK:I = 0x138d

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field public static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final NOTIFICATION_ID_ACCESS:I = -0xf4241

.field private static final NOTIFICATION_ID_AUTH:I = -0xf4242

.field private static final RELEASE_WAKE_LOCK_DELAY:I = 0x2710

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapService"

.field public static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.userconfirmtimeout"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x7530

.field private static final USER_TIMEOUT:I = 0x2

.field public static final VERBOSE:Z = true

.field private static sLocalPhoneName:Ljava/lang/String;

.field private static sLocalPhoneNum:Ljava/lang/String;

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

.field private final mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private mHasStarted:Z

.field private volatile mInterrupted:Z

.field private mIsWaitingAuthorization:Z

.field private mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mServerSession:Ljavax/obex/ServerSession;

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mStartId:I

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    .line 181
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 183
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 161
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 165
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 167
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    .line 171
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 173
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 175
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 177
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 185
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 195
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    .line 203
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 727
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 885
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$3;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

    .line 235
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/IBluetoothPbap$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/pbap/BluetoothPbapService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->removePbapNotification(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->createPbapNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startObexServerSession()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # Ljavax/obex/ServerSession;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeConnectionSocket()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/pbap/BluetoothPbapService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->initSocket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 79
    sput-object p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    return p1
.end method

.method private final declared-synchronized closeConnectionSocket()V
    .locals 4

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 488
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 489
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Connection Socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 486
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized closeServerSocket()V
    .locals 4

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 477
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 478
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Server Socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 474
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final closeService()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 497
    const-string v1, "BluetoothPbapService"

    const-string v2, "Pbap Service closeService in"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    .line 501
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeServerSocket()V

    .line 503
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    if-eqz v1, :cond_0

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->shutdown()V

    .line 506
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->join()V

    .line 507
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 515
    iput-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_2

    .line 519
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 520
    iput-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 523
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeConnectionSocket()V

    .line 525
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 526
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    if-eq v1, v5, :cond_3

    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 527
    const-string v1, "BluetoothPbapService"

    const-string v2, "successfully stopped pbap service"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iput v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 530
    :cond_3
    const-string v1, "BluetoothPbapService"

    const-string v2, "Pbap Service closeService out"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAcceptThread close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createPbapNotification(Ljava/lang/String;)V
    .locals 12
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 829
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 833
    .local v3, "nm":Landroid/app/NotificationManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 834
    .local v0, "clickIntent":Landroid/content/Intent;
    const-class v5, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 835
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 836
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 841
    .local v1, "deleteIntent":Landroid/content/Intent;
    const-class v5, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 843
    const/4 v4, 0x0

    .line 844
    .local v4, "notification":Landroid/app/Notification;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, "name":Ljava/lang/String;
    const-string v5, "com.android.bluetooth.pbap.authchall"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 847
    const-string v5, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    new-instance v4, Landroid/app/Notification;

    .end local v4    # "notification":Landroid/app/Notification;
    const v5, 0x1080080

    const v6, 0x7f050084

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v4, v5, v6, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 850
    .restart local v4    # "notification":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060059

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, v4, Landroid/app/Notification;->color:I

    .line 852
    const v5, 0x7f050085

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f050086

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v10, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 856
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 857
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 858
    iput v11, v4, Landroid/app/Notification;->defaults:I

    .line 859
    invoke-static {p0, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 860
    const v5, -0xf4242

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 862
    :cond_0
    return-void
.end method

.method public static getLocalPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 871
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private final initSocket()Z
    .locals 8

    .prologue
    .line 418
    const-string v5, "BluetoothPbapService"

    const-string v6, "Pbap Service initSocket"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v3, 0x0

    .line 421
    .local v3, "initSocketOK":Z
    const/16 v0, 0xa

    .line 424
    .local v0, "CREATE_RETRY_TIME":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    if-nez v5, :cond_0

    .line 425
    const/4 v3, 0x1

    .line 429
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v6, "OBEX Phonebook Access Server"

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_1
    if-nez v3, :cond_0

    .line 438
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_2

    .line 457
    :cond_0
    :goto_2
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    if-eqz v5, :cond_1

    .line 458
    const/4 v3, 0x0

    .line 460
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeServerSocket()V

    .line 463
    :cond_1
    if-eqz v3, :cond_4

    .line 464
    const-string v5, "BluetoothPbapService"

    const-string v6, "Succeed to create listening socket "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_3
    return v3

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "BluetoothPbapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error create RfcommServerSocket "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v3, 0x0

    goto :goto_1

    .line 439
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 440
    .local v4, "state":I
    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3

    .line 442
    const-string v5, "BluetoothPbapService"

    const-string v6, "initServerSocket failed as BT is (being) turned off"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 446
    :cond_3
    :try_start_1
    const-string v5, "BluetoothPbapService"

    const-string v6, "wait 300 ms"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    :catch_1
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v5, "BluetoothPbapService"

    const-string v6, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 467
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "state":I
    :cond_4
    const-string v5, "BluetoothPbapService"

    const-string v6, "Error to create listening socket after 10 try"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private notifyAuthCancelled()V
    .locals 3

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V

    .line 614
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 615
    monitor-exit v1

    .line 616
    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyAuthKeyInput(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    monitor-enter v1

    .line 603
    if-eqz p1, :cond_0

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setSessionKey(Ljava/lang/String;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    .line 607
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 608
    monitor-exit v1

    .line 609
    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 287
    const-string v9, "action"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "action":Ljava/lang/String;
    const-string v9, "BluetoothPbapService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v9, "android.bluetooth.adapter.extra.STATE"

    const/high16 v10, -0x80000000

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 291
    .local v7, "state":I
    const-string v9, "BluetoothPbapService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v3, 0x1

    .line 294
    .local v3, "removeTimeoutMsg":Z
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 295
    const/16 v9, 0xd

    if-ne v7, v9, :cond_3

    .line 297
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 298
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v8, "timeoutIntent":Landroid/content/Intent;
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v9, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v9, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v8, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 306
    .end local v8    # "timeoutIntent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 381
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 382
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    :cond_2
    :goto_1
    return-void

    .line 308
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 310
    :cond_4
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    if-eqz v9, :cond_7

    .line 312
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 314
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v9, :cond_5

    if-nez v2, :cond_6

    .line 315
    :cond_5
    const-string v9, "BluetoothPbapService"

    const-string v10, "Unexpected error!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    :cond_6
    const-string v9, "BluetoothPbapService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACL disconnected for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 322
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v1, "cancelIntent":Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    const-string v9, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v10, 0x2

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    .line 328
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    goto :goto_0

    .line 330
    .end local v1    # "cancelIntent":Landroid/content/Intent;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_7
    const-string v9, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 331
    const-string v9, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v10, 0x2

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 334
    .local v4, "requestType":I
    iget-boolean v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    if-ne v4, v9, :cond_2

    .line 340
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mIsWaitingAuthorization:Z

    .line 342
    const-string v9, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v10, 0x2

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 345
    const-string v9, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 346
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    move-result v5

    .line 349
    .local v5, "result":Z
    const-string v9, "BluetoothPbapService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPhonebookAccessPermission(ACCESS_ALLOWED) result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v5    # "result":Z
    :cond_8
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v9, :cond_9

    .line 355
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v11, 0x1392

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 358
    :cond_9
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    goto/16 :goto_0

    .line 362
    :cond_a
    const-string v9, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 363
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    move-result v5

    .line 366
    .restart local v5    # "result":Z
    const-string v9, "BluetoothPbapService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPhonebookAccessPermission(ACCESS_REJECTED) result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v5    # "result":Z
    :cond_b
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    goto/16 :goto_0

    .line 372
    .end local v4    # "requestType":I
    :cond_c
    const-string v9, "com.android.bluetooth.pbap.authresponse"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 373
    const-string v9, "com.android.bluetooth.pbap.sessionkey"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "sessionkey":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthKeyInput(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 375
    .end local v6    # "sessionkey":Ljava/lang/String;
    :cond_d
    const-string v9, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 376
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V

    goto/16 :goto_0

    .line 378
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private removePbapNotification(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 865
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 867
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 868
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 805
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    .line 806
    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "result"    # I

    .prologue
    .line 809
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    if-eq p1, v3, :cond_0

    .line 810
    const-string v3, "BluetoothPbapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pbap state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 813
    .local v1, "prevState":I
    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 814
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.bluetooth.pbap.intent.PBAP_PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 816
    const-string v3, "android.bluetooth.pbap.intent.PBAP_STATE"

    iget v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 817
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 818
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 819
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    .line 820
    .local v2, "s":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v2, :cond_0

    .line 821
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x6

    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "prevState":I
    .end local v2    # "s":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_0
    monitor-exit p0

    return-void

    .line 809
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private final startObexServerSession()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x138d

    const/4 v5, 0x0

    .line 534
    const-string v3, "BluetoothPbapService"

    const-string v4, "Pbap Service startObexServerSession"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_0

    .line 538
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 539
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "StartingObexPbapTransaction"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 541
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 542
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 544
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 545
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 546
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    .line 547
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 548
    const-string v3, "BluetoothPbapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PBAP]PhoneNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "PhoneName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 550
    const v3, 0x7f050089

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 554
    :cond_1
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    .line 555
    monitor-enter p0

    .line 556
    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    .line 557
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    .line 558
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V

    .line 559
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 561
    .local v2, "transport":Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;
    new-instance v3, Ljavax/obex/ServerSession;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-direct {v3, v2, v4, v5}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 562
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(I)V

    .line 564
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 569
    const-string v3, "BluetoothPbapService"

    const-string v4, "startObexServerSession() success!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 559
    .end local v2    # "transport":Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private startRfcommSocketListener()V
    .locals 2

    .prologue
    .line 408
    const-string v0, "BluetoothPbapService"

    const-string v1, "Pbap Service startRfcommSocketListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/pbap/BluetoothPbapService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 412
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    const-string v1, "BluetoothPbapAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->start()V

    .line 415
    :cond_0
    return-void
.end method

.method private stopObexServerSession()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 574
    const-string v0, "BluetoothPbapService"

    const-string v1, "Pbap Service stopObexServerSession"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v1, 0x138d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 579
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 581
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v0}, Ljavax/obex/ServerSession;->close()V

    .line 586
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 589
    :cond_1
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 591
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeConnectionSocket()V

    .line 595
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V

    .line 598
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(I)V

    .line 599
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 403
    const-string v0, "BluetoothPbapService"

    const-string v1, "Pbap Service onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 240
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 241
    const-string v2, "BluetoothPbapService"

    const-string v3, "Pbap Service onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    .line 244
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 246
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    if-nez v2, :cond_0

    .line 247
    iput-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 248
    const-string v2, "BluetoothPbapService"

    const-string v3, "Starting PBAP service"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->init(Landroid/content/Context;)V

    .line 250
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 251
    .local v1, "state":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    .end local v1    # "state":I
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 388
    const-string v0, "BluetoothPbapService"

    const-string v1, "Pbap Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 391
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    .line 392
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 393
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 399
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 268
    iput p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 269
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 270
    const-string v0, "BluetoothPbapService"

    const-string v1, "Stopping BluetoothPbapService: device does not have BT or device is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 282
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 277
    :cond_1
    if-eqz p1, :cond_0

    .line 278
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->parseIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
