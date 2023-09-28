# classes.dex

.class public final Landroid/bluetooth/le/ScanRecord;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanRecord$AdvertisingDataType;
    }
.end annotation


# static fields
.field public static final DATA_TYPE_3D_INFORMATION_DATA:I = 0x3d

.field public static final DATA_TYPE_ADVERTISING_INTERVAL:I = 0x1a

.field public static final DATA_TYPE_ADVERTISING_INTERVAL_LONG:I = 0x2f

.field public static final DATA_TYPE_APPEARANCE:I = 0x19

.field public static final DATA_TYPE_BIG_INFO:I = 0x2c

.field public static final DATA_TYPE_BROADCAST_CODE:I = 0x2d

.field public static final DATA_TYPE_CHANNEL_MAP_UPDATE_INDICATION:I = 0x28

.field public static final DATA_TYPE_CLASS_OF_DEVICE:I = 0xd

.field public static final DATA_TYPE_DEVICE_ID:I = 0x10

.field public static final DATA_TYPE_FLAGS:I = 0x1

.field public static DATA_TYPE_GROUP_AD_TYPE:I = 0x0

.field public static final DATA_TYPE_INDOOR_POSITIONING:I = 0x25

.field public static final DATA_TYPE_LE_BLUETOOTH_DEVICE_ADDRESS:I = 0x1b

.field public static final DATA_TYPE_LE_ROLE:I = 0x1c

.field public static final DATA_TYPE_LE_SECURE_CONNECTIONS_CONFIRMATION_VALUE:I = 0x22

.field public static final DATA_TYPE_LE_SECURE_CONNECTIONS_RANDOM_VALUE:I = 0x23

.field public static final DATA_TYPE_LE_SUPPORTED_FEATURES:I = 0x27

.field public static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field public static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field public static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field public static final DATA_TYPE_MESH_BEACON:I = 0x2b

.field public static final DATA_TYPE_MESH_MESSAGE:I = 0x2a

.field public static final DATA_TYPE_NONE:I = -0x1

.field public static final DATA_TYPE_PB_ADV:I = 0x29

.field public static final DATA_TYPE_PUBLIC_TARGET_ADDRESS:I = 0x17

.field public static final DATA_TYPE_RANDOM_TARGET_ADDRESS:I = 0x18

.field public static final DATA_TYPE_RESOLVABLE_SET_IDENTIFIER:I = 0x2e

.field public static final DATA_TYPE_SECURITY_MANAGER_OUT_OF_BAND_FLAGS:I = 0x11

.field public static final DATA_TYPE_SERVICE_DATA_128_BIT:I = 0x21

.field public static final DATA_TYPE_SERVICE_DATA_16_BIT:I = 0x16

.field public static final DATA_TYPE_SERVICE_DATA_32_BIT:I = 0x20

.field public static final DATA_TYPE_SERVICE_SOLICITATION_UUIDS_128_BIT:I = 0x15

.field public static final DATA_TYPE_SERVICE_SOLICITATION_UUIDS_16_BIT:I = 0x14

.field public static final DATA_TYPE_SERVICE_SOLICITATION_UUIDS_32_BIT:I = 0x1f

.field public static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field public static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field public static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field public static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field public static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field public static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field public static final DATA_TYPE_SIMPLE_PAIRING_HASH_C:I = 0xe

.field public static final DATA_TYPE_SIMPLE_PAIRING_HASH_C_256:I = 0x1d

.field public static final DATA_TYPE_SIMPLE_PAIRING_RANDOMIZER_R:I = 0xf

.field public static final DATA_TYPE_SIMPLE_PAIRING_RANDOMIZER_R_256:I = 0x1e

.field public static final DATA_TYPE_SLAVE_CONNECTION_INTERVAL_RANGE:I = 0x12

.field public static final DATA_TYPE_TRANSPORT_DISCOVERY_DATA:I = 0x26

.field public static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field public static final DATA_TYPE_URI:I = 0x24

.field private static final TAG:Ljava/lang/String; = "ScanRecord"


# instance fields
.field private final mAdvertiseFlags:I

.field private final mAdvertisingDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private final mGroupIdentifierData:[B

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceSolicitationUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTDSData:[B

.field private final mTxPowerLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Landroid/bluetooth/le/ScanRecord;->DATA_TYPE_GROUP_AD_TYPE:I

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;Ljava/util/HashMap;[B[B[B)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;[B[B[B)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    iput-object p1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    iput-object p3, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    iput-object p4, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    iput-object p7, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    iput p5, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    iput p6, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    iput-object p8, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertisingDataMap:Ljava/util/HashMap;

    iput-object p9, p0, Landroid/bluetooth/le/ScanRecord;->mTDSData:[B

    iput-object p10, p0, Landroid/bluetooth/le/ScanRecord;->mGroupIdentifierData:[B

    iput-object p11, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    return-void
.end method

.method private static extractBytes([BII)[B
    .registers 5

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;
    .registers 27

    move-object/from16 v13, p0

    const-string v14, "ScanRecord"

    if-nez v13, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    const/4 v1, -0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v3

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v12, v5

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v5

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v10, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move v1, v0

    :goto_37
    :try_start_37
    array-length v0, v13
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_38} :catch_15c

    if-ge v1, v0, :cond_11b

    add-int/lit8 v3, v1, 0x1

    :try_start_3c
    aget-byte v0, v13, v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3e} :catch_10f

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_46

    move/from16 v21, v3

    goto/16 :goto_11d

    :cond_46
    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v4, v3, 0x1

    :try_start_4a
    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v13, v4, v1}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x10

    const/4 v7, 0x4

    const/4 v8, 0x2

    sparse-switch v3, :sswitch_data_198

    move/from16 v21, v0

    sget v0, Landroid/bluetooth/le/ScanRecord;->DATA_TYPE_GROUP_AD_TYPE:I

    goto/16 :goto_f2

    :sswitch_66
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v13, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, v13, v4

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x2

    add-int/lit8 v8, v1, -0x2

    invoke-static {v13, v7, v8}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v7

    invoke-virtual {v12, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v21, v0

    goto/16 :goto_ff

    :sswitch_82
    invoke-static {v13, v4, v1}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v6

    move/from16 v21, v0

    move-object/from16 v19, v6

    goto/16 :goto_ff

    :sswitch_8c
    invoke-static {v13, v4, v1, v7, v15}, Landroid/bluetooth/le/ScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    move/from16 v21, v0

    goto/16 :goto_ff

    :sswitch_93
    const/4 v6, 0x2

    const/16 v7, 0x20

    if-ne v3, v7, :cond_9a

    const/4 v6, 0x4

    goto :goto_a0

    :cond_9a
    const/16 v7, 0x21

    if-ne v3, v7, :cond_a0

    const/16 v6, 0x10

    :cond_a0
    :goto_a0
    invoke-static {v13, v4, v6}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v8

    add-int v9, v4, v6

    move/from16 v21, v0

    sub-int v0, v1, v6

    invoke-static {v13, v9, v0}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    invoke-interface {v11, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ff

    :sswitch_b6
    move/from16 v21, v0

    invoke-static {v13, v4, v1, v6, v15}, Landroid/bluetooth/le/ScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    goto :goto_ff

    :sswitch_bc
    move/from16 v21, v0

    invoke-static {v13, v4, v1, v8, v15}, Landroid/bluetooth/le/ScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    goto :goto_ff

    :sswitch_c2
    move/from16 v21, v0

    aget-byte v0, v13, v4

    move/from16 v18, v0

    goto :goto_ff

    :sswitch_c9
    move/from16 v21, v0

    new-instance v0, Ljava/lang/String;

    invoke-static {v13, v4, v1}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v17, v0

    goto :goto_ff

    :sswitch_d7
    move/from16 v21, v0

    invoke-static {v13, v4, v1, v6, v2}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_ff

    :sswitch_dd
    move/from16 v21, v0

    invoke-static {v13, v4, v1, v7, v2}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_ff

    :sswitch_e3
    move/from16 v21, v0

    invoke-static {v13, v4, v1, v8, v2}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_ff

    :sswitch_e9
    move/from16 v21, v0

    aget-byte v0, v13, v4

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    goto :goto_ff

    :goto_f2
    if-ne v3, v0, :cond_ff

    const-string v0, "Parsing Group Identifier data"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13, v4, v1}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_fd} :catch_102

    move-object/from16 v20, v0

    :cond_ff
    :goto_ff
    add-int/2addr v1, v4

    goto/16 :goto_37

    :catch_102
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v21, v4

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    goto/16 :goto_167

    :catch_10f
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v21, v3

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    goto :goto_167

    :cond_11b
    move/from16 v21, v1

    :goto_11d
    :try_start_11d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_121} :catch_152

    if-eqz v0, :cond_127

    const/4 v2, 0x0

    move-object/from16 v22, v2

    goto :goto_129

    :cond_127
    move-object/from16 v22, v2

    :goto_129
    :try_start_129
    new-instance v0, Landroid/bluetooth/le/ScanRecord;
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_12b} :catch_14a

    move-object v1, v0

    move-object/from16 v2, v22

    move-object v3, v15

    move-object v4, v12

    move-object v5, v11

    move/from16 v6, v16

    move/from16 v7, v18

    move-object/from16 v8, v17

    move-object v9, v10

    move-object/from16 v23, v10

    move-object/from16 v10, v19

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    move-object/from16 v25, v12

    move-object/from16 v12, p0

    :try_start_144
    invoke-direct/range {v1 .. v12}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;Ljava/util/HashMap;[B[B[B)V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_147} :catch_148

    return-object v0

    :catch_148
    move-exception v0

    goto :goto_167

    :catch_14a
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    goto :goto_167

    :catch_152
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object/from16 v22, v2

    goto :goto_167

    :catch_15c
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move/from16 v21, v1

    move-object/from16 v22, v2

    :goto_167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to parse scan record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/bluetooth/le/ScanRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v14

    move-object/from16 v9, v23

    move-object/from16 v12, p0

    invoke-direct/range {v1 .. v12}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;Ljava/util/HashMap;[B[B[B)V

    return-object v14

    nop

    :sswitch_data_198
    .sparse-switch
        0x1 -> :sswitch_e9
        0x2 -> :sswitch_e3
        0x3 -> :sswitch_e3
        0x4 -> :sswitch_dd
        0x5 -> :sswitch_dd
        0x6 -> :sswitch_d7
        0x7 -> :sswitch_d7
        0x8 -> :sswitch_c9
        0x9 -> :sswitch_c9
        0xa -> :sswitch_c2
        0x14 -> :sswitch_bc
        0x15 -> :sswitch_b6
        0x16 -> :sswitch_93
        0x1f -> :sswitch_8c
        0x20 -> :sswitch_93
        0x21 -> :sswitch_93
        0x26 -> :sswitch_82
        0xff -> :sswitch_66
    .end sparse-switch
.end method

.method private static parseServiceSolicitationUuid([BIIILjava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_10

    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p3

    add-int/2addr p1, p3

    goto :goto_0

    :cond_10
    return p1
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_10

    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p3

    add-int/2addr p1, p3

    goto :goto_0

    :cond_10
    return p1
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getAdvertisingDataMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertisingDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getBytes()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupIdentifierData()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mGroupIdentifierData:[B

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .registers 3

    if-eqz p1, :cond_e

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceSolicitationUuids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTDSData()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mTDSData:[B

    return-object v0
.end method

.method public getTxPowerLevel()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public matchesAnyField(Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "[B>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_20

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_d

    goto :goto_20

    :cond_d
    add-int v3, v0, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v1, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return v4

    :cond_1c
    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_20
    :goto_20
    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSolicitationUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTDSData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mTDSData:[B

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
