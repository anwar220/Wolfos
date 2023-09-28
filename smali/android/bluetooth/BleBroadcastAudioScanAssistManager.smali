# classes.dex

.class public final Landroid/bluetooth/BleBroadcastAudioScanAssistManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BassclientServiceListener;,
        Landroid/bluetooth/BleBroadcastAudioScanAssistManager$BroadcastAssistSyncState;
    }
.end annotation


# static fields
.field public static final ACTION_BROADCAST_SOURCE_INFO:Ljava/lang/String; = "android.bluetooth.BroadcastAudioSAManager.action.BROADCAST_SOURCE_INFO"

.field private static final DBG:Z = true

.field public static final SYNC_AUDIO:I = 0x1

.field public static final SYNC_METADATA:I = 0x0

.field public static final SYNC_METADATA_AUDIO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BleBroadcastAudioScanAssistManager"

.field private static final VDBG:Z = true


# instance fields
.field private INVALID_SOURCE_ID:B

.field mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

.field mBroadcastAudioSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

.field mSyncState:I


# direct methods
.method static bridge synthetic -$$Nest$monBluetoothSyncHelperStateChanged(Landroid/bluetooth/BleBroadcastAudioScanAssistManager;ZLandroid/bluetooth/BluetoothProfile;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->onBluetoothSyncHelperStateChanged(ZLandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothSyncHelper;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBroadcastAudioSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->INVALID_SOURCE_ID:B

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    iput-object p2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    return-void
.end method

.method private convertAudioDataSyncState(I)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_11

    if-ne p1, v0, :cond_7

    goto :goto_11

    :cond_7
    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string/jumbo v1, "searchforLeAudioBroadcasters: mBluetoothSyncHelper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    return v0
.end method

.method private convertMetadataSyncState(I)I
    .registers 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    if-nez p1, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    return v0

    :cond_8
    :goto_8
    return v0
.end method

.method private isValidBroadcastSourceInfo(Landroid/bluetooth/BleBroadcastSourceInfo;)Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothSyncHelper;->getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    const-string v2, "BleBroadcastAudioScanAssistManager"

    if-nez v1, :cond_17

    const-string/jumbo v3, "no source info details for remote"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2f

    :cond_17
    const/4 v3, 0x0

    :goto_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {p1, v4}, Landroid/bluetooth/BleBroadcastSourceInfo;->matches(Landroid/bluetooth/BleBroadcastSourceInfo;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v0, 0x0

    goto :goto_2f

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2f
    :goto_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidBroadcastSourceInfo returns: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isValidSourceId(B)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothSyncHelper;->getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v0, 0x0

    goto :goto_27

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v3}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v3

    if-ne v3, p1, :cond_24

    const/4 v0, 0x1

    goto :goto_27

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_27
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSourceId returns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BleBroadcastAudioScanAssistManager"

    invoke-static {v3, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onBluetoothSyncHelperStateChanged(ZLandroid/bluetooth/BluetoothProfile;)V
    .registers 6

    if-eqz p1, :cond_12

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothSyncHelper;

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSyncHelper;->registerAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_15

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    :goto_15
    return-void
.end method

.method private printSelectedIndicies(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BleBroadcastAudioScanAssistManager"

    if-nez p1, :cond_b

    const-string/jumbo v1, "printSelectedIndicies : no selected indicies"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v3}, Landroid/bluetooth/BleBroadcastSourceChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v3}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_43
    return-void
.end method


# virtual methods
.method public addBroadcastSource(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;Z)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;Z)Z"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v3, 0x0

    const-string v4, "BleBroadcastAudioScanAssistManager"

    if-nez v2, :cond_10

    const-string v2, "addBroadcastSource: no BluetoothSyncHelper handle"

    invoke-static {v4, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_10
    if-eqz v1, :cond_2c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addBroadcastSource: Invalid syncState"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2c
    move-object/from16 v2, p3

    invoke-direct {p0, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->printSelectedIndicies(Ljava/util/List;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    iput v1, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    invoke-direct {p0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->convertMetadataSyncState(I)I

    move-result v12

    iget v5, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    invoke-direct {p0, v5}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->convertAudioDataSyncState(I)I

    move-result v13

    new-instance v14, Landroid/bluetooth/BleBroadcastSourceInfo;

    const/16 v7, -0x45

    const/4 v8, 0x0

    move-object v5, v14

    move-object/from16 v6, p1

    move v9, v12

    move v10, v13

    move-object/from16 v11, p3

    invoke-direct/range {v5 .. v11}, Landroid/bluetooth/BleBroadcastSourceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;BIIILjava/util/List;)V

    iput-object v14, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBroadcastAudioSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    nop

    invoke-direct {p0, v14}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->isValidBroadcastSourceInfo(Landroid/bluetooth/BleBroadcastSourceInfo;)Z

    move-result v5

    if-eqz v5, :cond_66

    iget-object v3, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v4, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBroadcastAudioSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    iget-object v6, v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    move/from16 v7, p4

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/bluetooth/BluetoothSyncHelper;->addBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    const/4 v3, 0x1

    return v3

    :cond_66
    move/from16 v7, p4

    const-string v5, "Similar source information already exists"

    invoke-static {v4, v5}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method protected finalize()V
    .registers 4

    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAppCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSyncHelper;->unregisterAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V

    :cond_12
    return-void
.end method

.method public getAllBroadcastSourceInformation()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-nez v0, :cond_d

    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string v1, "GetNumberOfAcceptableBroadcastSources: no BluetoothSyncHelper handle"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_d
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothSyncHelper;->getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeBroadcastSource(BZ)Z
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v1, 0x0

    const-string v2, "BleBroadcastAudioScanAssistManager"

    if-nez v0, :cond_e

    const-string/jumbo v0, "removeBroadcastSource: no BluetoothSyncHelper handle"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_e
    invoke-direct {p0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->isValidSourceId(B)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "removeBroadcastSource: Invalid source Id"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeBroadcastSource: sourceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/bluetooth/BluetoothSyncHelper;->removeBroadcastSource(Landroid/bluetooth/BluetoothDevice;BZLandroid/content/AttributionSource;)Z

    move-result v0

    return v0
.end method

.method public searchforLeAudioBroadcasters()Z
    .registers 4

    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string/jumbo v1, "searchforLeAudioBroadcasters: "

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v1, :cond_15

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothSyncHelper;->searchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    :cond_15
    const-string/jumbo v1, "searchforLeAudioBroadcasters: mBluetoothSyncHelper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public selectBroadcastSource(Landroid/bluetooth/le/ScanResult;Z)Z
    .registers 7

    const/4 v0, 0x0

    const-string v1, "BleBroadcastAudioScanAssistManager"

    if-nez p1, :cond_c

    const-string/jumbo v2, "selectBroadcastSource: Invalid scan res"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectBroadcastSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v2, :cond_30

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v2, v0, p1, p2, v1}, Landroid/bluetooth/BluetoothSyncHelper;->selectBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanResult;ZLandroid/content/AttributionSource;)Z

    move-result v0

    return v0

    :cond_30
    const-string/jumbo v2, "selectBroadcastSource: mBluetoothSyncHelper is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setBroadcastCode(BLjava/lang/String;Z)Z
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v1, 0x0

    const-string v2, "BleBroadcastAudioScanAssistManager"

    if-nez v0, :cond_e

    const-string/jumbo v0, "setBroadcastCode: no BluetoothSyncHelper handle"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_e
    invoke-direct {p0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->isValidSourceId(B)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "setBroadcastCode: Invalid source Id"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBroadcastCode: sourceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BroadcastCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-direct {v0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;-><init>(B)V

    nop

    invoke-virtual {v0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->setSourceId(B)V

    invoke-virtual {v0, p2}, Landroid/bluetooth/BleBroadcastSourceInfo;->setBroadcastCode(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1, v2, v0, p3, v3}, Landroid/bluetooth/BluetoothSyncHelper;->setBroadcastCode(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    move-result v1

    return v1
.end method

.method public stopSearchforLeAudioBroadcasters()Z
    .registers 4

    const-string v0, "BleBroadcastAudioScanAssistManager"

    const-string/jumbo v1, "stopSearchforLeAudioBroadcasters()"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    if-eqz v1, :cond_15

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothSyncHelper;->stopSearchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    :cond_15
    const-string/jumbo v1, "stopSearchforLeAudioBroadcasters: mBluetoothSyncHelper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public updateBroadcastSource(BILjava/util/List;Z)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    const/4 v1, 0x0

    const-string v2, "BleBroadcastAudioScanAssistManager"

    if-nez v0, :cond_e

    const-string/jumbo v0, "updateBroadcastSource: no BluetoothSyncHelper handle"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_e
    invoke-direct {p0, p1}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->isValidSourceId(B)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "updateBroadcastSource: Invalid source Id"

    invoke-static {v2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    const/4 v0, -0x1

    const/4 v1, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBroadcastSource: sourceId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", syncState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    invoke-direct {p0, p2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->convertMetadataSyncState(I)I

    move-result v1

    iget v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mSyncState:I

    invoke-direct {p0, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->convertAudioDataSyncState(I)I

    move-result v0

    invoke-direct {p0, p3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->printSelectedIndicies(Ljava/util/List;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBroadcastSource: audioSyncState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBroadcastSource: metadataSyncState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-direct {v2, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;-><init>(B)V

    nop

    invoke-virtual {v2, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->setMetadataSyncState(I)V

    invoke-virtual {v2, v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->setAudioSyncState(I)V

    invoke-virtual {v2, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->setSourceId(B)V

    invoke-virtual {v2, p3}, Landroid/bluetooth/BleBroadcastSourceInfo;->setBroadcastChannelsSyncStatus(Ljava/util/List;)V

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothSyncHelper:Landroid/bluetooth/BluetoothSyncHelper;

    iget-object v4, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v3, v4, v2, p4, v5}, Landroid/bluetooth/BluetoothSyncHelper;->updateBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z

    move-result v3

    return v3
.end method
