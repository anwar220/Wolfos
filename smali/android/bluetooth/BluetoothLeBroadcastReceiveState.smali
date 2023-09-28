# classes.dex

.class public final Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcastReceiveState$BigEncryptionState;,
        Landroid/bluetooth/BluetoothLeBroadcastReceiveState$PaSyncState;
    }
.end annotation


# static fields
.field public static final BIG_ENCRYPTION_STATE_BAD_CODE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BIG_ENCRYPTION_STATE_CODE_REQUIRED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BIG_ENCRYPTION_STATE_DECRYPTING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BIG_ENCRYPTION_STATE_INVALID:I = 0xffff

.field public static final BIG_ENCRYPTION_STATE_NOT_ENCRYPTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeBroadcastReceiveState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PA_SYNC_STATE_FAILED_TO_SYNCHRONIZE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PA_SYNC_STATE_IDLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PA_SYNC_STATE_INVALID:I = 0xffff

.field public static final PA_SYNC_STATE_NO_PAST:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PA_SYNC_STATE_SYNCHRONIZED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PA_SYNC_STATE_SYNCINFO_REQUEST:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mBadCode:[B

.field private final mBigEncryptionState:I

.field private final mBisSyncState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastId:I

.field private final mNumSubgroups:I

.field private final mPaSyncState:I

.field private final mSourceAddressType:I

.field private final mSourceAdvertisingSid:I

.field private final mSourceDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mSourceId:I

.field private final mSubgroupMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/bluetooth/BluetoothDevice;IIII[BILjava/util/List;Ljava/util/List;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/bluetooth/BluetoothDevice;",
            "IIII[BI",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-ltz v1, :cond_159

    const/16 v10, 0xff

    if-gt v1, v10, :cond_159

    const-string/jumbo v10, "sourceDevice cannot be null"

    invoke-static {v3, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v10, 0xffff

    if-eq v2, v10, :cond_14c

    const/4 v11, 0x1

    if-eq v2, v11, :cond_4e

    if-nez v2, :cond_2e

    goto :goto_4e

    :cond_2e
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sourceAddressType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is invalid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_4e
    :goto_4e
    const-string v12, "bisSyncState cannot be null"

    invoke-static {v8, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v12

    const-string v13, " must be equal to numSubgroups "

    if-ne v12, v7, :cond_123

    const-string/jumbo v12, "subgroupMetadata cannot be null"

    invoke-static {v9, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v7, :cond_f9

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eqz v4, :cond_91

    if-eq v4, v11, :cond_91

    if-eq v4, v13, :cond_91

    if-eq v4, v12, :cond_91

    const/4 v14, 0x4

    if-eq v4, v14, :cond_91

    if-ne v4, v10, :cond_77

    goto :goto_91

    :cond_77
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unrecognized paSyncState "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_91
    :goto_91
    if-eqz v5, :cond_b6

    if-eq v5, v11, :cond_b6

    if-eq v5, v13, :cond_b6

    if-eq v5, v12, :cond_b6

    if-ne v5, v10, :cond_9c

    goto :goto_b6

    :cond_9c
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unrecognized bigEncryptionState "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_b6
    :goto_b6
    if-eqz v6, :cond_de

    array-length v10, v6

    const/16 v11, 0x10

    if-ne v10, v11, :cond_be

    goto :goto_de

    :cond_be
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "badCode must be 16 bytes long of null, but is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " + bytes long"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_de
    :goto_de
    iput v1, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceId:I

    iput v2, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceAddressType:I

    iput-object v3, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    move/from16 v10, p4

    iput v10, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceAdvertisingSid:I

    move/from16 v11, p5

    iput v11, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBroadcastId:I

    iput v4, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mPaSyncState:I

    iput v5, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBigEncryptionState:I

    iput-object v6, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBadCode:[B

    iput v7, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mNumSubgroups:I

    iput-object v8, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBisSyncState:Ljava/util/List;

    iput-object v9, v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSubgroupMetadata:Ljava/util/List;

    return-void

    :cond_f9
    move/from16 v10, p4

    move/from16 v11, p5

    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "subgroupMetadata.size()  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_123
    move/from16 v10, p4

    move/from16 v11, p5

    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bisSyncState.size() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_14c
    move/from16 v10, p4

    move/from16 v11, p5

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "sourceAddressType cannot be ADDRESS_TYPE_UNKNOWN"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_159
    move/from16 v10, p4

    move/from16 v11, p5

    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sourceId "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " does not fall between 0x00 and 0xFF"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBadCode()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBadCode:[B

    return-object v0
.end method

.method public getBigEncryptionState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBigEncryptionState:I

    return v0
.end method

.method public getBisSyncState()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBisSyncState:Ljava/util/List;

    return-object v0
.end method

.method public getBroadcastId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBroadcastId:I

    return v0
.end method

.method public getNumSubgroups()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mNumSubgroups:I

    return v0
.end method

.method public getPaSyncState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mPaSyncState:I

    return v0
.end method

.method public getSourceAddressType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceAddressType:I

    return v0
.end method

.method public getSourceAdvertisingSid()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceAdvertisingSid:I

    return v0
.end method

.method public getSourceDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getSourceId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceId:I

    return v0
.end method

.method public getSubgroupMetadata()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSubgroupMetadata:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSourceAdvertisingSid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBroadcastId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mPaSyncState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBigEncryptionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBadCode:[B

    if-eqz v0, :cond_32

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBadCode:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_36

    :cond_32
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_36
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mNumSubgroups:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mBisSyncState:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->mSubgroupMetadata:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
