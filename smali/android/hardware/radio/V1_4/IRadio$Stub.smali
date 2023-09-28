# classes2.dex

.class public abstract Landroid/hardware/radio/V1_4/IRadio$Stub;
.super Landroid/os/HwBinder;

# interfaces
.implements Landroid/hardware/radio/V1_4/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_40

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_54

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_68

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_7c

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_90

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_a4

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_40
    .array-data 1
        -0x11t
        0x4at
        -0x49t
        0x41t
        -0x9t
        -0x19t
        0x76t
        0x2ft
        -0x4ct
        0x5et
        0x2et
        0x24t
        -0x36t
        -0x7dt
        -0x79t
        0x1ft
        0x72t
        0x0t
        0x6ct
        -0x20t
        0x5ft
        0x57t
        -0x56t
        -0x66t
        -0x23t
        -0x3bt
        0x74t
        -0x77t
        0x3dt
        -0x2et
        -0x68t
        0x72t
    .end array-data

    :array_54
    .array-data 1
        -0x5ft
        -0x3at
        -0x50t
        0x76t
        0x1bt
        -0x35t
        -0x77t
        -0x2at
        -0x41t
        0x15t
        -0x5ft
        0x56t
        -0x7t
        0x30t
        0x6bt
        -0x80t
        -0x70t
        -0x4dt
        -0x57t
        0x16t
        -0x5ft
        0x5ft
        -0x16t
        0x16t
        -0x77t
        -0x4ct
        -0x50t
        -0x3ft
        0x73t
        -0x72t
        0x38t
        0x2ft
    .end array-data

    :array_68
    .array-data 1
        0x2bt
        0x5at
        -0x2t
        -0xat
        -0x72t
        0x3et
        0x2ft
        -0xft
        -0x26t
        -0x4at
        0x3et
        0x4ft
        0x2et
        -0x1bt
        0x73t
        0x37t
        -0x11t
        0x26t
        0x35t
        -0x14t
        -0x7ft
        0x2ft
        0x49t
        0x8t
        0xct
        -0x53t
        -0x4t
        -0x17t
        0x66t
        -0x2dt
        0x3bt
        0x52t
    .end array-data

    :array_7c
    .array-data 1
        -0x7at
        -0x5t
        0x7t
        -0x66t
        0x60t
        0xbt
        0x23t
        0x1t
        -0x59t
        0x52t
        0x24t
        -0x63t
        -0x5t
        -0x4t
        0x53t
        -0x68t
        0x3at
        0x79t
        0x5dt
        0x75t
        0x2ft
        0x11t
        -0x56t
        -0x44t
        -0x4at
        -0x7dt
        0x15t
        -0x5ft
        -0x77t
        -0xat
        -0x37t
        -0x5et
    .end array-data

    :array_90
    .array-data 1
        -0x31t
        -0x56t
        -0x50t
        -0x1ct
        0x5ct
        0x5dt
        0x7bt
        0x35t
        -0x6bt
        0x3t
        0x2dt
        0x64t
        -0x63t
        -0x5et
        -0x62t
        -0x29t
        0x12t
        -0x17t
        0x20t
        -0x7t
        0x56t
        -0x3ft
        0x36t
        0x71t
        -0x11t
        -0x2dt
        0x56t
        0x2t
        -0x6t
        -0x7ft
        -0x37t
        0x23t
    .end array-data

    :array_a4
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.4::IRadio"

    const-string v2, "android.hardware.radio@1.3::IRadio"

    const-string v3, "android.hardware.radio@1.2::IRadio"

    const-string v4, "android.hardware.radio@1.1::IRadio"

    const-string v5, "android.hardware.radio@1.0::IRadio"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.hardware.radio@1.4::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v0, "android.hardware.radio@1.3::IRadio"

    const-string v1, "android.hardware.radio@1.2::IRadio"

    const-string v2, "android.hardware.radio@1.1::IRadio"

    const-string v3, "android.hidl.base@1.0::IBase"

    const/4 v4, 0x0

    const-string v5, "android.hardware.radio@1.4::IRadio"

    const-string v6, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_b86

    goto/16 :goto_b85

    :sswitch_18
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->notifySyspropsChanged()V

    goto/16 :goto_b85

    :sswitch_20
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, v12}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b85

    :sswitch_32
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->ping()V

    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b85

    :sswitch_40
    goto/16 :goto_b85

    :sswitch_42
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setHALInstrumentation()V

    goto/16 :goto_b85

    :sswitch_4a
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v4, 0x0

    :goto_71
    if-ge v4, v2, :cond_92

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_8a

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_8a

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    :cond_8a
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_92
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b85

    :sswitch_9f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b85

    :sswitch_b1
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b85

    :sswitch_c7
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_b85

    :sswitch_d9
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSignalStrength_1_4(I)V

    goto/16 :goto_b85

    :sswitch_e5
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAllowedCarriers_1_4(I)V

    goto/16 :goto_b85

    :sswitch_f1
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setAllowedCarriers_1_4(ILandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    goto/16 :goto_b85

    :sswitch_109
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredNetworkTypeBitmap(II)V

    goto/16 :goto_b85

    :sswitch_119
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredNetworkTypeBitmap(I)V

    goto/16 :goto_b85

    :sswitch_125
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    goto/16 :goto_b85

    :sswitch_139
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    new-instance v0, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    move-object v9, v0

    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    goto/16 :goto_b85

    :sswitch_16d
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataProfile_1_4(ILjava/util/ArrayList;)V

    goto/16 :goto_b85

    :sswitch_17d
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V

    goto/16 :goto_b85

    :sswitch_191
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    move-object v13, v0

    invoke-virtual {v13, v11}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_b85

    :sswitch_1c5
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getModemStackStatus(I)V

    goto/16 :goto_b85

    :sswitch_1d1
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->enableModem(IZ)V

    goto/16 :goto_b85

    :sswitch_1e1
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    goto/16 :goto_b85

    :sswitch_1f5
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deactivateDataCall_1_2(III)V

    goto/16 :goto_b85

    :sswitch_209
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v15, v0

    invoke-virtual {v15, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_b85

    :sswitch_24b
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v13

    move v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto/16 :goto_b85

    :sswitch_27a
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    goto/16 :goto_b85

    :sswitch_29d
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setIndicationFilter_1_2(II)V

    goto/16 :goto_b85

    :sswitch_2ad
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    goto/16 :goto_b85

    :sswitch_2c1
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopKeepalive(II)V

    goto/16 :goto_b85

    :sswitch_2d1
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    goto/16 :goto_b85

    :sswitch_2e5
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopNetworkScan(I)V

    goto/16 :goto_b85

    :sswitch_2f1
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    goto/16 :goto_b85

    :sswitch_305
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSimCardPower_1_1(II)V

    goto/16 :goto_b85

    :sswitch_315
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    goto/16 :goto_b85

    :sswitch_329
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->responseAcknowledgement()V

    goto/16 :goto_b85

    :sswitch_331
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSimCardPower(IZ)V

    goto/16 :goto_b85

    :sswitch_341
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setIndicationFilter(II)V

    goto/16 :goto_b85

    :sswitch_351
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendDeviceState(IIZ)V

    goto/16 :goto_b85

    :sswitch_365
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAllowedCarriers(I)V

    goto/16 :goto_b85

    :sswitch_371
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    goto/16 :goto_b85

    :sswitch_389
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getModemActivityInfo(I)V

    goto/16 :goto_b85

    :sswitch_395
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->pullLceData(I)V

    goto/16 :goto_b85

    :sswitch_3a1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopLceService(I)V

    goto/16 :goto_b85

    :sswitch_3ad
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startLceService(IIZ)V

    goto/16 :goto_b85

    :sswitch_3c1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_b85

    :sswitch_3d5
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getRadioCapability(I)V

    goto/16 :goto_b85

    :sswitch_3e1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestShutdown(I)V

    goto/16 :goto_b85

    :sswitch_3ed
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    goto/16 :goto_b85

    :sswitch_401
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_419
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getHardwareConfig(I)V

    goto/16 :goto_b85

    :sswitch_425
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setDataAllowed(IZ)V

    goto/16 :goto_b85

    :sswitch_435
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    goto/16 :goto_b85

    :sswitch_449
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvResetConfig(II)V

    goto/16 :goto_b85

    :sswitch_459
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    goto/16 :goto_b85

    :sswitch_469
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    goto/16 :goto_b85

    :sswitch_47d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->nvReadItem(II)V

    goto/16 :goto_b85

    :sswitch_48d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_b85

    :sswitch_4a1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccCloseLogicalChannel(II)V

    goto/16 :goto_b85

    :sswitch_4b1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    goto/16 :goto_b85

    :sswitch_4c5
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_b85

    :sswitch_4d9
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    goto/16 :goto_b85

    :sswitch_4ed
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getImsRegistrationState(I)V

    goto/16 :goto_b85

    :sswitch_4f9
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    goto/16 :goto_b85

    :sswitch_515
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCellInfoListRate(II)V

    goto/16 :goto_b85

    :sswitch_525
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCellInfoList(I)V

    goto/16 :goto_b85

    :sswitch_531
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getVoiceRadioTechnology(I)V

    goto/16 :goto_b85

    :sswitch_53d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_54d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_561
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_571
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    goto/16 :goto_b85

    :sswitch_57d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->reportStkServiceIsRunning(I)V

    goto/16 :goto_b85

    :sswitch_589
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    goto/16 :goto_b85

    :sswitch_599
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_5a9
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSmscAddress(I)V

    goto/16 :goto_b85

    :sswitch_5b5
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_b85

    :sswitch_5c1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDeviceIdentity(I)V

    goto/16 :goto_b85

    :sswitch_5cd
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deleteSmsOnRuim(II)V

    goto/16 :goto_b85

    :sswitch_5dd
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    goto/16 :goto_b85

    :sswitch_5f1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCDMASubscription(I)V

    goto/16 :goto_b85

    :sswitch_5fd
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    goto/16 :goto_b85

    :sswitch_60d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_b85

    :sswitch_61d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    goto/16 :goto_b85

    :sswitch_629
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    goto/16 :goto_b85

    :sswitch_639
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_b85

    :sswitch_649
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getGsmBroadcastConfig(I)V

    goto/16 :goto_b85

    :sswitch_655
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    goto/16 :goto_b85

    :sswitch_669
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_b85

    :sswitch_67d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    goto/16 :goto_b85

    :sswitch_695
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_6a5
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    goto/16 :goto_b85

    :sswitch_6b1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    goto/16 :goto_b85

    :sswitch_6c1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getTTYMode(I)V

    goto/16 :goto_b85

    :sswitch_6cd
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setTTYMode(II)V

    goto/16 :goto_b85

    :sswitch_6dd
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCdmaRoamingPreference(I)V

    goto/16 :goto_b85

    :sswitch_6e9
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaRoamingPreference(II)V

    goto/16 :goto_b85

    :sswitch_6f9
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    goto/16 :goto_b85

    :sswitch_709
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setLocationUpdates(IZ)V

    goto/16 :goto_b85

    :sswitch_719
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getNeighboringCids(I)V

    goto/16 :goto_b85

    :sswitch_725
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getPreferredNetworkType(I)V

    goto/16 :goto_b85

    :sswitch_731
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setPreferredNetworkType(II)V

    goto/16 :goto_b85

    :sswitch_741
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->explicitCallTransfer(I)V

    goto/16 :goto_b85

    :sswitch_74d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    goto/16 :goto_b85

    :sswitch_75d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_76d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_77d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAvailableBandModes(I)V

    goto/16 :goto_b85

    :sswitch_789
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setBandMode(II)V

    goto/16 :goto_b85

    :sswitch_799
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deleteSmsOnSim(II)V

    goto/16 :goto_b85

    :sswitch_7a9
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    goto/16 :goto_b85

    :sswitch_7bd
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    goto/16 :goto_b85

    :sswitch_7cd
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDataCallList(I)V

    goto/16 :goto_b85

    :sswitch_7d9
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getClip(I)V

    goto/16 :goto_b85

    :sswitch_7e5
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getMute(I)V

    goto/16 :goto_b85

    :sswitch_7f1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setMute(IZ)V

    goto/16 :goto_b85

    :sswitch_801
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->separateConnection(II)V

    goto/16 :goto_b85

    :sswitch_811
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getBasebandVersion(I)V

    goto/16 :goto_b85

    :sswitch_81d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->stopDtmf(I)V

    goto/16 :goto_b85

    :sswitch_829
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_839
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getAvailableNetworks(I)V

    goto/16 :goto_b85

    :sswitch_845
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_855
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    goto/16 :goto_b85

    :sswitch_861
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getNetworkSelectionMode(I)V

    goto/16 :goto_b85

    :sswitch_86d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_885
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v13

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_8ad
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_8d0
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->deactivateDataCall(IIZ)V

    goto/16 :goto_b85

    :sswitch_8e4
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acceptCall(I)V

    goto/16 :goto_b85

    :sswitch_8f0
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    goto/16 :goto_b85

    :sswitch_904
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCallWaiting(IZI)V

    goto/16 :goto_b85

    :sswitch_918
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCallWaiting(II)V

    goto/16 :goto_b85

    :sswitch_928
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_b85

    :sswitch_93c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_b85

    :sswitch_950
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setClir(II)V

    goto/16 :goto_b85

    :sswitch_960
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getClir(I)V

    goto/16 :goto_b85

    :sswitch_96c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->cancelPendingUssd(I)V

    goto/16 :goto_b85

    :sswitch_978
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_988
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    goto/16 :goto_b85

    :sswitch_99c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    goto/16 :goto_b85

    :sswitch_9c9
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_b85

    :sswitch_9dd
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_b85

    :sswitch_9f1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_a01
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setRadioPower(IZ)V

    goto/16 :goto_b85

    :sswitch_a11
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getOperator(I)V

    goto/16 :goto_b85

    :sswitch_a1d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getDataRegistrationState(I)V

    goto/16 :goto_b85

    :sswitch_a29
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getVoiceRegistrationState(I)V

    goto/16 :goto_b85

    :sswitch_a35
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getSignalStrength(I)V

    goto/16 :goto_b85

    :sswitch_a41
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getLastCallFailCause(I)V

    goto/16 :goto_b85

    :sswitch_a4d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->rejectCall(I)V

    goto/16 :goto_b85

    :sswitch_a59
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->conference(I)V

    goto/16 :goto_b85

    :sswitch_a65
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    goto/16 :goto_b85

    :sswitch_a71
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    goto/16 :goto_b85

    :sswitch_a7d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangupWaitingOrBackground(I)V

    goto/16 :goto_b85

    :sswitch_a89
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->hangup(II)V

    goto/16 :goto_b85

    :sswitch_a99
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_aa9
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    goto/16 :goto_b85

    :sswitch_abd
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getCurrentCalls(I)V

    goto/16 :goto_b85

    :sswitch_ac9
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_ad9
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_af1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b85

    :sswitch_b09
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b85

    :sswitch_b20
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b85

    :sswitch_b33
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b85

    :sswitch_b4a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_4/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b85

    :sswitch_b5d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->getIccCardStatus(I)V

    goto :goto_b85

    :sswitch_b68
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    nop

    :goto_b85
    return-void

    :sswitch_data_b86
    .sparse-switch
        0x1 -> :sswitch_b68
        0x2 -> :sswitch_b5d
        0x3 -> :sswitch_b4a
        0x4 -> :sswitch_b33
        0x5 -> :sswitch_b20
        0x6 -> :sswitch_b09
        0x7 -> :sswitch_af1
        0x8 -> :sswitch_ad9
        0x9 -> :sswitch_ac9
        0xa -> :sswitch_abd
        0xb -> :sswitch_aa9
        0xc -> :sswitch_a99
        0xd -> :sswitch_a89
        0xe -> :sswitch_a7d
        0xf -> :sswitch_a71
        0x10 -> :sswitch_a65
        0x11 -> :sswitch_a59
        0x12 -> :sswitch_a4d
        0x13 -> :sswitch_a41
        0x14 -> :sswitch_a35
        0x15 -> :sswitch_a29
        0x16 -> :sswitch_a1d
        0x17 -> :sswitch_a11
        0x18 -> :sswitch_a01
        0x19 -> :sswitch_9f1
        0x1a -> :sswitch_9dd
        0x1b -> :sswitch_9c9
        0x1c -> :sswitch_99c
        0x1d -> :sswitch_988
        0x1e -> :sswitch_978
        0x1f -> :sswitch_96c
        0x20 -> :sswitch_960
        0x21 -> :sswitch_950
        0x22 -> :sswitch_93c
        0x23 -> :sswitch_928
        0x24 -> :sswitch_918
        0x25 -> :sswitch_904
        0x26 -> :sswitch_8f0
        0x27 -> :sswitch_8e4
        0x28 -> :sswitch_8d0
        0x29 -> :sswitch_8ad
        0x2a -> :sswitch_885
        0x2b -> :sswitch_86d
        0x2c -> :sswitch_861
        0x2d -> :sswitch_855
        0x2e -> :sswitch_845
        0x2f -> :sswitch_839
        0x30 -> :sswitch_829
        0x31 -> :sswitch_81d
        0x32 -> :sswitch_811
        0x33 -> :sswitch_801
        0x34 -> :sswitch_7f1
        0x35 -> :sswitch_7e5
        0x36 -> :sswitch_7d9
        0x37 -> :sswitch_7cd
        0x38 -> :sswitch_7bd
        0x39 -> :sswitch_7a9
        0x3a -> :sswitch_799
        0x3b -> :sswitch_789
        0x3c -> :sswitch_77d
        0x3d -> :sswitch_76d
        0x3e -> :sswitch_75d
        0x3f -> :sswitch_74d
        0x40 -> :sswitch_741
        0x41 -> :sswitch_731
        0x42 -> :sswitch_725
        0x43 -> :sswitch_719
        0x44 -> :sswitch_709
        0x45 -> :sswitch_6f9
        0x46 -> :sswitch_6e9
        0x47 -> :sswitch_6dd
        0x48 -> :sswitch_6cd
        0x49 -> :sswitch_6c1
        0x4a -> :sswitch_6b1
        0x4b -> :sswitch_6a5
        0x4c -> :sswitch_695
        0x4d -> :sswitch_67d
        0x4e -> :sswitch_669
        0x4f -> :sswitch_655
        0x50 -> :sswitch_649
        0x51 -> :sswitch_639
        0x52 -> :sswitch_629
        0x53 -> :sswitch_61d
        0x54 -> :sswitch_60d
        0x55 -> :sswitch_5fd
        0x56 -> :sswitch_5f1
        0x57 -> :sswitch_5dd
        0x58 -> :sswitch_5cd
        0x59 -> :sswitch_5c1
        0x5a -> :sswitch_5b5
        0x5b -> :sswitch_5a9
        0x5c -> :sswitch_599
        0x5d -> :sswitch_589
        0x5e -> :sswitch_57d
        0x5f -> :sswitch_571
        0x60 -> :sswitch_561
        0x61 -> :sswitch_54d
        0x62 -> :sswitch_53d
        0x63 -> :sswitch_531
        0x64 -> :sswitch_525
        0x65 -> :sswitch_515
        0x66 -> :sswitch_4f9
        0x67 -> :sswitch_4ed
        0x68 -> :sswitch_4d9
        0x69 -> :sswitch_4c5
        0x6a -> :sswitch_4b1
        0x6b -> :sswitch_4a1
        0x6c -> :sswitch_48d
        0x6d -> :sswitch_47d
        0x6e -> :sswitch_469
        0x6f -> :sswitch_459
        0x70 -> :sswitch_449
        0x71 -> :sswitch_435
        0x72 -> :sswitch_425
        0x73 -> :sswitch_419
        0x74 -> :sswitch_401
        0x75 -> :sswitch_3ed
        0x76 -> :sswitch_3e1
        0x77 -> :sswitch_3d5
        0x78 -> :sswitch_3c1
        0x79 -> :sswitch_3ad
        0x7a -> :sswitch_3a1
        0x7b -> :sswitch_395
        0x7c -> :sswitch_389
        0x7d -> :sswitch_371
        0x7e -> :sswitch_365
        0x7f -> :sswitch_351
        0x80 -> :sswitch_341
        0x81 -> :sswitch_331
        0x82 -> :sswitch_329
        0x83 -> :sswitch_315
        0x84 -> :sswitch_305
        0x85 -> :sswitch_2f1
        0x86 -> :sswitch_2e5
        0x87 -> :sswitch_2d1
        0x88 -> :sswitch_2c1
        0x89 -> :sswitch_2ad
        0x8a -> :sswitch_29d
        0x8b -> :sswitch_27a
        0x8c -> :sswitch_24b
        0x8d -> :sswitch_209
        0x8e -> :sswitch_1f5
        0x8f -> :sswitch_1e1
        0x90 -> :sswitch_1d1
        0x91 -> :sswitch_1c5
        0x92 -> :sswitch_191
        0x93 -> :sswitch_17d
        0x94 -> :sswitch_16d
        0x95 -> :sswitch_139
        0x96 -> :sswitch_125
        0x97 -> :sswitch_119
        0x98 -> :sswitch_109
        0x99 -> :sswitch_f1
        0x9a -> :sswitch_e5
        0x9b -> :sswitch_d9
        0xf43484e -> :sswitch_c7
        0xf444247 -> :sswitch_b1
        0xf445343 -> :sswitch_9f
        0xf485348 -> :sswitch_4a
        0xf494e54 -> :sswitch_42
        0xf4c5444 -> :sswitch_40
        0xf504e47 -> :sswitch_32
        0xf524546 -> :sswitch_20
        0xf535953 -> :sswitch_18
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.radio@1.4::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_4/IRadio$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_4/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
