# classes.dex

.class public final Landroid/bluetooth/BleBroadcastSourceInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BleBroadcastSourceInfo$BroadcastAssistEncryptionState;,
        Landroid/bluetooth/BleBroadcastSourceInfo$BroadcastAssistAudioSyncState;,
        Landroid/bluetooth/BleBroadcastSourceInfo$BroadcastAssistMetadataSyncState;,
        Landroid/bluetooth/BleBroadcastSourceInfo$BroadcastAssistAddressType;
    }
.end annotation


# static fields
.field private static final BASS_DBG:Z

.field private static final BIS_NO_PREF:I = -0x1

.field public static final BROADCASTER_ID_INVALID:I = 0xffff

.field public static final BROADCAST_ASSIST_ADDRESS_TYPE_INVALID:I = 0xffff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BROADCAST_ASSIST_ADDRESS_TYPE_PUBLIC:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BROADCAST_ASSIST_ADDRESS_TYPE_RANDOM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BROADCAST_ASSIST_AUDIO_SYNC_STATE_INVALID:I = 0xffff

.field public static final BROADCAST_ASSIST_AUDIO_SYNC_STATE_NOT_SYNCHRONIZED:I = 0x0

.field public static final BROADCAST_ASSIST_AUDIO_SYNC_STATE_SYNCHRONIZED:I = 0x1

.field public static final BROADCAST_ASSIST_ENC_STATE_BADCODE:I = 0x3

.field public static final BROADCAST_ASSIST_ENC_STATE_DECRYPTING:I = 0x2

.field public static final BROADCAST_ASSIST_ENC_STATE_INVALID:I = 0xffff

.field public static final BROADCAST_ASSIST_ENC_STATE_PIN_NEEDED:I = 0x1

.field public static final BROADCAST_ASSIST_ENC_STATE_UNENCRYPTED:I = 0x0

.field public static final BROADCAST_ASSIST_INVALID_SOURCE_ID:B = 0x0t

.field public static final BROADCAST_ASSIST_PA_SYNC_STATE_IDLE:I = 0x0

.field public static final BROADCAST_ASSIST_PA_SYNC_STATE_INVALID:I = 0xffff

.field public static final BROADCAST_ASSIST_PA_SYNC_STATE_IN_SYNC:I = 0x2

.field public static final BROADCAST_ASSIST_PA_SYNC_STATE_NO_PAST:I = 0x4

.field public static final BROADCAST_ASSIST_PA_SYNC_STATE_SYNCINFO_REQ:I = 0x1

.field public static final BROADCAST_ASSIST_PA_SYNC_STATE_SYNC_FAIL:I = 0x3

.field private static final BROADCAST_CODE_SIZE:I = 0x10

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BleBroadcastSourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_MAX_NUM_SOURCE_INFOS:Ljava/lang/String; = "android.bluetooth.device.extra.MAX_NUM_SOURCE_INFOS"

.field public static final EXTRA_SOURCE_INFO:Ljava/lang/String; = "android.bluetooth.device.extra.SOURCE_INFO"

.field public static final EXTRA_SOURCE_INFO_INDEX:Ljava/lang/String; = "android.bluetooth.device.extra.SOURCE_INFO_INDEX"

.field private static final TAG:Ljava/lang/String; = "BleBroadcastSourceInfo"


# instance fields
.field private mAudioBisIndexList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSyncState:I

.field private mBadBroadcastCode:[B

.field private mBroadcastCode:Ljava/lang/String;

.field private mBroadcasterId:I

.field private mEncyptionStatus:I

.field private mMetaDataSyncState:I

.field private mMetadataList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private mNumSubGroups:B

.field private mSourceAddressType:I

.field private mSourceAdvSid:B

.field private mSourceDevice:Landroid/bluetooth/BluetoothDevice;

.field private mSourceId:B


# direct methods
.method static bridge synthetic -$$Nest$smreadMapFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->readMapFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smreadMetadataListFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->readMetadataListFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string v0, "BleBroadcastSourceInfo"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_DBG:Z

    new-instance v0, Landroid/bluetooth/BleBroadcastSourceInfo$1;

    invoke-direct {v0}, Landroid/bluetooth/BleBroadcastSourceInfo$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BleBroadcastSourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(B)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    iput-byte p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    const v0, 0xffff

    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    iput-byte v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    iput-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    iput-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    iput-byte v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;BBIIIIILjava/lang/String;[BBLjava/util/Map;Ljava/util/Map;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "BBIIIII",
            "Ljava/lang/String;",
            "[BB",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    move/from16 v2, p2

    iput-byte v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    move/from16 v3, p6

    iput v3, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    move/from16 v4, p7

    iput v4, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    move/from16 v5, p8

    iput v5, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    move/from16 v6, p5

    iput v6, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    move-object/from16 v7, p1

    iput-object v7, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    move/from16 v8, p3

    iput-byte v8, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    move/from16 v9, p4

    iput v9, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    move-object/from16 v10, p9

    iput-object v10, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    if-eqz v1, :cond_47

    array-length v11, v1

    if-eqz v11, :cond_47

    array-length v11, v1

    new-array v11, v11, [B

    iput-object v11, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    array-length v12, v1

    const/4 v13, 0x0

    invoke-static {v1, v13, v11, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_47
    move/from16 v11, p11

    iput-byte v11, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    new-instance v12, Ljava/util/HashMap;

    move-object/from16 v13, p12

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v12, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    new-instance v12, Ljava/util/HashMap;

    move-object/from16 v14, p13

    invoke-direct {v12, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v12, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;BBIIII[BBILjava/util/Map;Ljava/util/Map;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "BBIIII[BBI",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    move/from16 v2, p2

    iput-byte v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    move/from16 v3, p5

    iput v3, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    move-object/from16 v4, p1

    iput-object v4, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    move/from16 v5, p3

    iput-byte v5, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    move/from16 v6, p4

    iput v6, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    move/from16 v7, p6

    iput v7, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    move/from16 v8, p10

    iput v8, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    move/from16 v9, p7

    iput v9, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    const/4 v10, 0x0

    if-eqz v1, :cond_42

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    array-length v12, v11

    invoke-static {v1, v10, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_42
    move/from16 v11, p9

    iput-byte v11, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    const/4 v12, 0x0

    if-eqz p11, :cond_f9

    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_51
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    const-string v10, "BleBroadcastSourceInfo"

    if-nez v15, :cond_6e

    const-string/jumbo v1, "selectedBISIndiciesList is null"

    invoke-static {v10, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bc

    :cond_6e
    const/4 v1, 0x0

    :goto_6f
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_bc

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v2}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b5

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v2}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v2

    shl-int v2, v3, v2

    or-int/2addr v12, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v3}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p2

    move/from16 v3, p5

    goto :goto_6f

    :cond_bc
    :goto_bc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subGroupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "audioBisIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v1, p8

    const/4 v10, 0x0

    goto/16 :goto_51

    :cond_f9
    if-eqz p12, :cond_130

    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_103
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_130

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_123

    array-length v10, v3

    if-eqz v10, :cond_123

    array-length v10, v3

    new-array v10, v10, [B

    array-length v13, v3

    const/4 v14, 0x0

    invoke-static {v3, v14, v10, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_124

    :cond_123
    const/4 v14, 0x0

    :goto_124
    iget-object v10, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-interface {v10, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_103

    :cond_130
    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;BBIIILjava/util/List;ILjava/lang/String;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "BBIII",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    move/from16 v2, p2

    iput-byte v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    move/from16 v3, p5

    iput v3, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    move/from16 v4, p6

    iput v4, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    move/from16 v5, p8

    iput v5, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    move/from16 v6, p4

    iput v6, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    move-object/from16 v7, p1

    iput-object v7, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    move/from16 v8, p3

    iput-byte v8, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    const v9, 0xffff

    iput v9, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    const/4 v9, 0x0

    const-string v10, "BleBroadcastSourceInfo"

    if-nez v1, :cond_43

    const-string/jumbo v11, "selectedBISIndiciesList is null"

    invoke-static {v10, v11}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_dc

    :cond_43
    const/4 v11, 0x0

    :goto_44
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_dc

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v12}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v14}, Landroid/bluetooth/BleBroadcastSourceChannel;->getSubGroupId()I

    move-result v14

    iget-object v15, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7e

    iget-object v9, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/lang/Integer;

    :cond_7e
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v15}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v15

    shl-int/2addr v13, v15

    or-int/2addr v9, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v13}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "is set"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "audioBisIndex"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d7
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto/16 :goto_44

    :cond_dc
    :goto_dc
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    const/4 v10, 0x0

    iput-byte v10, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;BIIILjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "BIII",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    iput p4, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    iput p5, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    iput p3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    iput-object p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    iput-byte p2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    const v0, 0xffff

    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    const-string v1, "BleBroadcastSourceInfo"

    const/4 v2, 0x0

    if-nez p6, :cond_2d

    const-string/jumbo v3, "selectedBISIndiciesList is null"

    invoke-static {v1, v3}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ae

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ae

    invoke-interface {p6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v4}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v6}, Landroid/bluetooth/BleBroadcastSourceChannel;->getSubGroupId()I

    move-result v6

    iget-object v7, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    iget-object v7, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Ljava/lang/Integer;

    :cond_68
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v8}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v8

    shl-int/2addr v5, v8

    or-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v7}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "is set"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_ae
    :goto_ae
    iput-byte v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    iput v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    iput-byte v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    return-void
.end method

.method static BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_DBG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private static readMapFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1d

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method

.method private static readMetadataListFromParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2d

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v4, v5, [B

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_27
    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2d
    return-void
.end method

.method private writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    :cond_36
    return-void
.end method

.method private writeMetadataListToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_37

    array-length v3, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_37
    goto :goto_f

    :cond_38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Landroid/bluetooth/BleBroadcastSourceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BleBroadcastSourceInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "other>>  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BleBroadcastSourceInfo"

    invoke-static {v3, v2}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local>>  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-byte v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    iget-byte v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    if-ne v2, v3, :cond_76

    iget v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    iget v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    if-ne v2, v3, :cond_76

    iget v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    iget v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    if-ne v2, v3, :cond_76

    iget v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    iget v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    if-ne v2, v3, :cond_76

    iget-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne v2, v3, :cond_76

    iget-byte v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    iget-byte v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    if-ne v2, v3, :cond_76

    iget v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    iget v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    if-ne v2, v3, :cond_76

    iget-object v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    if-ne v2, v3, :cond_76

    iget v2, v0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    iget v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    if-ne v2, v3, :cond_76

    const/4 v1, 0x1

    :cond_76
    return v1

    :cond_77
    return v1
.end method

.method public getAdvAddressType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    return v0
.end method

.method public getAdvertisingSid()B
    .registers 2

    iget-byte v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    return v0
.end method

.method public getAudioSyncState()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    return v0
.end method

.method public getBadBroadcastCode()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    return-object v0
.end method

.method public getBisIndexList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    return-object v0
.end method

.method public getBroadcastChannelsSyncStatus()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-byte v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    if-ge v1, v2, :cond_49

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    move v8, v2

    move v9, v3

    :goto_1d
    if-eqz v8, :cond_46

    and-int/lit8 v2, v8, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    new-instance v10, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v2, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [B

    move-object v2, v10

    move v3, v9

    move v6, v1

    invoke-direct/range {v2 .. v7}, Landroid/bluetooth/BleBroadcastSourceChannel;-><init>(ILjava/lang/String;ZI[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    shr-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "returning Bisindicies:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BleBroadcastSourceInfo"

    invoke-static {v2, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBroadcastCode()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcasterId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    return v0
.end method

.method public getEncryptionStatus()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    return v0
.end method

.method public getMetadataList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    return-object v0
.end method

.method public getMetadataSyncState()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    return v0
.end method

.method public getNumberOfSubGroups()B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-byte v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    return v0
.end method

.method public getSourceDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getSourceId()B
    .registers 2

    iget-byte v0, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmptyEntry()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    const v2, 0xffff

    if-ne v1, v2, :cond_1d

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    if-ne v1, v2, :cond_1d

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1d

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    if-nez v1, :cond_1d

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    if-ne v1, v2, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmptyEntry returns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BleBroadcastSourceInfo"

    invoke-static {v2, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public matches(Landroid/bluetooth/BleBroadcastSourceInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_3e

    :cond_5
    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1b

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAdvertisingSid()B

    move-result v2

    if-ne v1, v2, :cond_3e

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAdvAddressType()I

    move-result v2

    if-ne v1, v2, :cond_3e

    const/4 v0, 0x1

    goto :goto_3e

    :cond_1b
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAdvertisingSid()B

    move-result v2

    if-ne v1, v2, :cond_3e

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAdvAddressType()I

    move-result v2

    if-ne v1, v2, :cond_3e

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcasterId()I

    move-result v2

    if-ne v1, v2, :cond_3e

    const/4 v0, 0x1

    :cond_3e
    :goto_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "matches returns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BleBroadcastSourceInfo"

    invoke-static {v2, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setAdvAddressType(I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    return-void
.end method

.method public setAdvertisingSid(B)V
    .registers 2

    iput-byte p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    return-void
.end method

.method setAudioSyncState(I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    return-void
.end method

.method setBroadcastChannelsSyncStatus(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BleBroadcastSourceInfo"

    if-nez p1, :cond_b

    const-string/jumbo v1, "selectedBISIndiciesList is null"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8e

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v2}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8a

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v4}, Landroid/bluetooth/BleBroadcastSourceChannel;->getSubGroupId()I

    move-result v4

    iget-object v5, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    iget-object v5, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Ljava/lang/Integer;

    :cond_47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v6}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v6

    shl-int/2addr v3, v6

    or-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BleBroadcastSourceChannel;

    invoke-virtual {v5}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "is set"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    :cond_8e
    return-void
.end method

.method setBroadcastCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    return-void
.end method

.method public setBroadcasterId(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    return-void
.end method

.method setEncryptionStatus(I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    return-void
.end method

.method public setMetadataSyncState(I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    return-void
.end method

.method public setSourceDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setSourceId(B)V
    .registers 2

    iput-byte p1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{BleBroadcastSourceInfo : mSourceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sourceDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " addressType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSourceAdvSid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMetaDataSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAudioSyncState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEncyptionStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBadBroadcastCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNumSubGroups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBroadcastCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAudioBisIndexList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMetadataList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBroadcasterId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const-string v0, "BleBroadcastSourceInfo"

    const-string/jumbo v1, "writeToParcel>"

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceId:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAddressType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mSourceAdvSid:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcasterId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetaDataSyncState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioSyncState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mEncyptionStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    if-eqz v1, :cond_3f

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBadBroadcastCode:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_42

    :cond_3f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_42
    iget-byte v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mNumSubGroups:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mBroadcastCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mAudioBisIndexList:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object v1, p0, Landroid/bluetooth/BleBroadcastSourceInfo;->mMetadataList:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->writeMetadataListToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeToParcel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->BASS_Debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
