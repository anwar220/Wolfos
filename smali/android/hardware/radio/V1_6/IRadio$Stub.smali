# classes2.dex

.class public abstract Landroid/hardware/radio/V1_6/IRadio$Stub;
.super Landroid/os/HwBinder;

# interfaces
.implements Landroid/hardware/radio/V1_6/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/IRadio;
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

    const/16 v1, 0x8

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_50

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_64

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_78

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_8c

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_a0

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_b4

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_c8

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_dc

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_50
    .array-data 1
        0x3et
        -0x78t
        0x66t
        -0x68t
        0x7dt
        -0x1ct
        -0x14t
        -0x4ct
        -0x78t
        0x7t
        -0x40t
        -0x63t
        0x4ct
        -0x78t
        -0x14t
        0x38t
        0x36t
        0x59t
        0x30t
        -0x5et
        0x24t
        0x15t
        -0xft
        -0x49t
        0x4et
        -0x21t
        -0x75t
        0x14t
        -0x26t
        0x17t
        -0x7ct
        0x6bt
    .end array-data

    :array_64
    .array-data 1
        -0x4ct
        0x54t
        -0x21t
        -0x7bt
        0x34t
        0x41t
        -0x3ft
        0x2ft
        0x6et
        0x42t
        0x5et
        -0x76t
        0x60t
        -0x23t
        0x29t
        -0x3t
        -0x5et
        0xft
        0x5et
        0x6et
        0x39t
        -0x47t
        0x3dt
        0x11t
        0x3t
        -0x1ct
        -0x4dt
        0x74t
        -0x6bt
        -0x25t
        0x38t
        -0x56t
    .end array-data

    :array_78
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

    :array_8c
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

    :array_a0
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

    :array_b4
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

    :array_c8
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

    :array_dc
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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.6::IRadio"

    const-string v2, "android.hardware.radio@1.5::IRadio"

    const-string v3, "android.hardware.radio@1.4::IRadio"

    const-string v4, "android.hardware.radio@1.3::IRadio"

    const-string v5, "android.hardware.radio@1.2::IRadio"

    const-string v6, "android.hardware.radio@1.1::IRadio"

    const-string v7, "android.hardware.radio@1.0::IRadio"

    const-string v8, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.hardware.radio@1.6::IRadio"

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
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v0, "android.hardware.radio@1.3::IRadio"

    const-string v1, "android.hardware.radio@1.2::IRadio"

    const-string v2, "android.hardware.radio@1.1::IRadio"

    const-string v3, "android.hidl.base@1.0::IBase"

    const/4 v4, 0x0

    const-string v5, "android.hardware.radio@1.4::IRadio"

    const-string v6, "android.hardware.radio@1.5::IRadio"

    const-string v7, "android.hardware.radio@1.6::IRadio"

    const-string v8, "android.hardware.radio@1.0::IRadio"

    sparse-switch p1, :sswitch_data_f28

    goto/16 :goto_f26

    :sswitch_1c
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->notifySyspropsChanged()V

    goto/16 :goto_f26

    :sswitch_24
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, v14}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_f26

    :sswitch_36
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->ping()V

    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_f26

    :sswitch_44
    goto/16 :goto_f26

    :sswitch_46
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setHALInstrumentation()V

    goto/16 :goto_f26

    :sswitch_4e
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->writeStatus(I)V

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

    :goto_75
    if-ge v4, v2, :cond_96

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_8e

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_8e

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    :cond_8e
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_96
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_f26

    :sswitch_a3
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_f26

    :sswitch_b5
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_f26

    :sswitch_cb
    invoke-virtual {v13, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_f26

    :sswitch_dd
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->updateSimPhonebookRecords(ILandroid/hardware/radio/V1_6/PhonebookRecordInfo;)V

    goto/16 :goto_f26

    :sswitch_f1
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSimPhonebookCapacity(I)V

    goto/16 :goto_f26

    :sswitch_fd
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSimPhonebookRecords(I)V

    goto/16 :goto_f26

    :sswitch_109
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCarrierInfoForImsiEncryption_1_6(ILandroid/hardware/radio/V1_6/ImsiEncryptionInfo;)V

    goto/16 :goto_f26

    :sswitch_11d
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSlicingConfig(I)V

    goto/16 :goto_f26

    :sswitch_129
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCurrentCalls_1_6(I)V

    goto/16 :goto_f26

    :sswitch_135
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDataRegistrationState_1_6(I)V

    goto/16 :goto_f26

    :sswitch_141
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSignalStrength_1_6(I)V

    goto/16 :goto_f26

    :sswitch_14d
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getVoiceRegistrationState_1_6(I)V

    goto/16 :goto_f26

    :sswitch_159
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCellInfoList_1_6(I)V

    goto/16 :goto_f26

    :sswitch_165
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSystemSelectionChannels(I)V

    goto/16 :goto_f26

    :sswitch_171
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    new-instance v0, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    move-object v9, v0

    invoke-virtual {v9, v13}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_6/IRadio$Stub;->emergencyDial_1_6(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    goto/16 :goto_f26

    :sswitch_1a5
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setDataThrottling(IBJ)V

    goto/16 :goto_f26

    :sswitch_1b9
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getAllowedNetworkTypesBitmap(I)V

    goto/16 :goto_f26

    :sswitch_1c5
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setAllowedNetworkTypesBitmap(II)V

    goto/16 :goto_f26

    :sswitch_1d5
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->cancelHandover(II)V

    goto/16 :goto_f26

    :sswitch_1e5
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startHandover(II)V

    goto/16 :goto_f26

    :sswitch_1f5
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->releasePduSessionId(II)V

    goto/16 :goto_f26

    :sswitch_205
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->allocatePduSessionId(I)V

    goto/16 :goto_f26

    :sswitch_211
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->isNrDualConnectivityEnabled(I)V

    goto/16 :goto_f26

    :sswitch_21d
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setNrDualConnectivityState(IB)V

    goto/16 :goto_f26

    :sswitch_22d
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSimCardPower_1_6(II)V

    goto/16 :goto_f26

    :sswitch_23d
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendCdmaSmsExpectMore_1_6(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_f26

    :sswitch_251
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendCdmaSms_1_6(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_f26

    :sswitch_265
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendSmsExpectMore_1_6(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_f26

    :sswitch_279
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendSms_1_6(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_f26

    :sswitch_28d
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    new-instance v0, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    move-object v11, v0

    invoke-virtual {v11, v13}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/LinkAddress;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v21

    new-instance v0, Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;-><init>()V

    move-object v10, v0

    invoke-virtual {v10, v13}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    new-instance v0, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;-><init>()V

    move-object v9, v0

    invoke-virtual {v9, v13}, Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v22

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move-object v3, v11

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v23, v9

    move-object v9, v10

    move-object/from16 v24, v10

    move-object/from16 v10, v23

    move-object/from16 v25, v11

    move/from16 v11, v22

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setupDataCall_1_6(IILandroid/hardware/radio/V1_5/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;ILandroid/hardware/radio/V1_6/OptionalSliceInfo;Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;Z)V

    goto/16 :goto_f26

    :sswitch_2eb
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDataCallList_1_6(I)V

    goto/16 :goto_f26

    :sswitch_2f7
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setRadioPower_1_6(IZZZ)V

    goto/16 :goto_f26

    :sswitch_30f
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->supplySimDepersonalization(IILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_323
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_f26

    :sswitch_337
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setNetworkSelectionModeManual_1_5(ILjava/lang/String;I)V

    goto/16 :goto_f26

    :sswitch_34b
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDataRegistrationState_1_5(I)V

    goto/16 :goto_f26

    :sswitch_357
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getVoiceRegistrationState_1_5(I)V

    goto/16 :goto_f26

    :sswitch_363
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getBarringInfo(I)V

    goto/16 :goto_f26

    :sswitch_36f
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setIndicationFilter_1_5(II)V

    goto/16 :goto_f26

    :sswitch_37f
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setRadioPower_1_5(IZZZ)V

    goto/16 :goto_f26

    :sswitch_397
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setDataProfile_1_5(ILjava/util/ArrayList;)V

    goto/16 :goto_f26

    :sswitch_3a7
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setInitialAttachApn_1_5(ILandroid/hardware/radio/V1_5/DataProfileInfo;)V

    goto/16 :goto_f26

    :sswitch_3bb
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    new-instance v0, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    move-object v10, v0

    invoke-virtual {v10, v13}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/LinkAddress;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setupDataCall_1_5(IILandroid/hardware/radio/V1_5/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_f26

    :sswitch_3ef
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/NetworkScanRequest;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startNetworkScan_1_5(ILandroid/hardware/radio/V1_5/NetworkScanRequest;)V

    goto/16 :goto_f26

    :sswitch_403
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSystemSelectionChannels_1_5(IZLjava/util/ArrayList;)V

    goto/16 :goto_f26

    :sswitch_417
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->areUiccApplicationsEnabled(I)V

    goto/16 :goto_f26

    :sswitch_423
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->enableUiccApplications(IZ)V

    goto/16 :goto_f26

    :sswitch_433
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setLinkCapacityReportingCriteria_1_5(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto/16 :goto_f26

    :sswitch_462
    invoke-virtual {v13, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSignalStrengthReportingCriteria_1_5(ILandroid/hardware/radio/V1_5/SignalThresholdInfo;I)V

    goto/16 :goto_f26

    :sswitch_47a
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSignalStrength_1_4(I)V

    goto/16 :goto_f26

    :sswitch_486
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getAllowedCarriers_1_4(I)V

    goto/16 :goto_f26

    :sswitch_492
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setAllowedCarriers_1_4(ILandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    goto/16 :goto_f26

    :sswitch_4aa
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setPreferredNetworkTypeBitmap(II)V

    goto/16 :goto_f26

    :sswitch_4ba
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getPreferredNetworkTypeBitmap(I)V

    goto/16 :goto_f26

    :sswitch_4c6
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    goto/16 :goto_f26

    :sswitch_4da
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    new-instance v0, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    move-object v9, v0

    invoke-virtual {v9, v13}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_6/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    goto/16 :goto_f26

    :sswitch_50e
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setDataProfile_1_4(ILjava/util/ArrayList;)V

    goto/16 :goto_f26

    :sswitch_51e
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V

    goto/16 :goto_f26

    :sswitch_532
    invoke-virtual {v13, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    move-object v10, v0

    invoke-virtual {v10, v13}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_f26

    :sswitch_566
    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getModemStackStatus(I)V

    goto/16 :goto_f26

    :sswitch_572
    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->enableModem(IZ)V

    goto/16 :goto_f26

    :sswitch_582
    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    goto/16 :goto_f26

    :sswitch_596
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->deactivateDataCall_1_2(III)V

    goto/16 :goto_f26

    :sswitch_5aa
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v15, v0

    invoke-virtual {v15, v13}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

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

    move v1, v10

    move v2, v11

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_f26

    :sswitch_5ec
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto/16 :goto_f26

    :sswitch_61b
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    goto/16 :goto_f26

    :sswitch_63e
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setIndicationFilter_1_2(II)V

    goto/16 :goto_f26

    :sswitch_64e
    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    goto/16 :goto_f26

    :sswitch_662
    invoke-virtual {v13, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->stopKeepalive(II)V

    goto/16 :goto_f26

    :sswitch_672
    invoke-virtual {v13, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    goto/16 :goto_f26

    :sswitch_686
    invoke-virtual {v13, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->stopNetworkScan(I)V

    goto/16 :goto_f26

    :sswitch_692
    invoke-virtual {v13, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    goto/16 :goto_f26

    :sswitch_6a6
    invoke-virtual {v13, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSimCardPower_1_1(II)V

    goto/16 :goto_f26

    :sswitch_6b6
    invoke-virtual {v13, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    goto/16 :goto_f26

    :sswitch_6ca
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->responseAcknowledgement()V

    goto/16 :goto_f26

    :sswitch_6d2
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSimCardPower(IZ)V

    goto/16 :goto_f26

    :sswitch_6e2
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setIndicationFilter(II)V

    goto/16 :goto_f26

    :sswitch_6f2
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendDeviceState(IIZ)V

    goto/16 :goto_f26

    :sswitch_706
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getAllowedCarriers(I)V

    goto/16 :goto_f26

    :sswitch_712
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    new-instance v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    invoke-virtual {v2, v13}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    goto/16 :goto_f26

    :sswitch_72a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getModemActivityInfo(I)V

    goto/16 :goto_f26

    :sswitch_736
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->pullLceData(I)V

    goto/16 :goto_f26

    :sswitch_742
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->stopLceService(I)V

    goto/16 :goto_f26

    :sswitch_74e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startLceService(IIZ)V

    goto/16 :goto_f26

    :sswitch_762
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    goto/16 :goto_f26

    :sswitch_776
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getRadioCapability(I)V

    goto/16 :goto_f26

    :sswitch_782
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->requestShutdown(I)V

    goto/16 :goto_f26

    :sswitch_78e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    goto/16 :goto_f26

    :sswitch_7a2
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_7ba
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getHardwareConfig(I)V

    goto/16 :goto_f26

    :sswitch_7c6
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setDataAllowed(IZ)V

    goto/16 :goto_f26

    :sswitch_7d6
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    goto/16 :goto_f26

    :sswitch_7ea
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->nvResetConfig(II)V

    goto/16 :goto_f26

    :sswitch_7fa
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    goto/16 :goto_f26

    :sswitch_80a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    goto/16 :goto_f26

    :sswitch_81e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->nvReadItem(II)V

    goto/16 :goto_f26

    :sswitch_82e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_f26

    :sswitch_842
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->iccCloseLogicalChannel(II)V

    goto/16 :goto_f26

    :sswitch_852
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    goto/16 :goto_f26

    :sswitch_866
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    goto/16 :goto_f26

    :sswitch_87a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    goto/16 :goto_f26

    :sswitch_88e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getImsRegistrationState(I)V

    goto/16 :goto_f26

    :sswitch_89a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    goto/16 :goto_f26

    :sswitch_8b6
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCellInfoListRate(II)V

    goto/16 :goto_f26

    :sswitch_8c6
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCellInfoList(I)V

    goto/16 :goto_f26

    :sswitch_8d2
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getVoiceRadioTechnology(I)V

    goto/16 :goto_f26

    :sswitch_8de
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_8ee
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_902
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_912
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    goto/16 :goto_f26

    :sswitch_91e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->reportStkServiceIsRunning(I)V

    goto/16 :goto_f26

    :sswitch_92a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    goto/16 :goto_f26

    :sswitch_93a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_94a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSmscAddress(I)V

    goto/16 :goto_f26

    :sswitch_956
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    goto/16 :goto_f26

    :sswitch_962
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDeviceIdentity(I)V

    goto/16 :goto_f26

    :sswitch_96e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->deleteSmsOnRuim(II)V

    goto/16 :goto_f26

    :sswitch_97e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    goto/16 :goto_f26

    :sswitch_992
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCDMASubscription(I)V

    goto/16 :goto_f26

    :sswitch_99e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    goto/16 :goto_f26

    :sswitch_9ae
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_f26

    :sswitch_9be
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    goto/16 :goto_f26

    :sswitch_9ca
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    goto/16 :goto_f26

    :sswitch_9da
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    goto/16 :goto_f26

    :sswitch_9ea
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getGsmBroadcastConfig(I)V

    goto/16 :goto_f26

    :sswitch_9f6
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    goto/16 :goto_f26

    :sswitch_a0a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    goto/16 :goto_f26

    :sswitch_a1e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    goto/16 :goto_f26

    :sswitch_a36
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_a46
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    goto/16 :goto_f26

    :sswitch_a52
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    goto/16 :goto_f26

    :sswitch_a62
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getTTYMode(I)V

    goto/16 :goto_f26

    :sswitch_a6e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setTTYMode(II)V

    goto/16 :goto_f26

    :sswitch_a7e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCdmaRoamingPreference(I)V

    goto/16 :goto_f26

    :sswitch_a8a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCdmaRoamingPreference(II)V

    goto/16 :goto_f26

    :sswitch_a9a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    goto/16 :goto_f26

    :sswitch_aaa
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setLocationUpdates(IZ)V

    goto/16 :goto_f26

    :sswitch_aba
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getNeighboringCids(I)V

    goto/16 :goto_f26

    :sswitch_ac6
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getPreferredNetworkType(I)V

    goto/16 :goto_f26

    :sswitch_ad2
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setPreferredNetworkType(II)V

    goto/16 :goto_f26

    :sswitch_ae2
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->explicitCallTransfer(I)V

    goto/16 :goto_f26

    :sswitch_aee
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    goto/16 :goto_f26

    :sswitch_afe
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_b0e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_b1e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getAvailableBandModes(I)V

    goto/16 :goto_f26

    :sswitch_b2a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setBandMode(II)V

    goto/16 :goto_f26

    :sswitch_b3a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->deleteSmsOnSim(II)V

    goto/16 :goto_f26

    :sswitch_b4a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    goto/16 :goto_f26

    :sswitch_b5e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    goto/16 :goto_f26

    :sswitch_b6e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDataCallList(I)V

    goto/16 :goto_f26

    :sswitch_b7a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getClip(I)V

    goto/16 :goto_f26

    :sswitch_b86
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getMute(I)V

    goto/16 :goto_f26

    :sswitch_b92
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setMute(IZ)V

    goto/16 :goto_f26

    :sswitch_ba2
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->separateConnection(II)V

    goto/16 :goto_f26

    :sswitch_bb2
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getBasebandVersion(I)V

    goto/16 :goto_f26

    :sswitch_bbe
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->stopDtmf(I)V

    goto/16 :goto_f26

    :sswitch_bca
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_bda
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getAvailableNetworks(I)V

    goto/16 :goto_f26

    :sswitch_be6
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_bf6
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    goto/16 :goto_f26

    :sswitch_c02
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getNetworkSelectionMode(I)V

    goto/16 :goto_f26

    :sswitch_c0e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_c26
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_c4e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_c71
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->deactivateDataCall(IIZ)V

    goto/16 :goto_f26

    :sswitch_c85
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->acceptCall(I)V

    goto/16 :goto_f26

    :sswitch_c91
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    goto/16 :goto_f26

    :sswitch_ca5
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCallWaiting(IZI)V

    goto/16 :goto_f26

    :sswitch_cb9
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCallWaiting(II)V

    goto/16 :goto_f26

    :sswitch_cc9
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_f26

    :sswitch_cdd
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    goto/16 :goto_f26

    :sswitch_cf1
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setClir(II)V

    goto/16 :goto_f26

    :sswitch_d01
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getClir(I)V

    goto/16 :goto_f26

    :sswitch_d0d
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->cancelPendingUssd(I)V

    goto/16 :goto_f26

    :sswitch_d19
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_d29
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    goto/16 :goto_f26

    :sswitch_d3d
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    invoke-virtual {v9, v13}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    goto/16 :goto_f26

    :sswitch_d6a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_f26

    :sswitch_d7e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    goto/16 :goto_f26

    :sswitch_d92
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_da2
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setRadioPower(IZ)V

    goto/16 :goto_f26

    :sswitch_db2
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getOperator(I)V

    goto/16 :goto_f26

    :sswitch_dbe
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getDataRegistrationState(I)V

    goto/16 :goto_f26

    :sswitch_dca
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getVoiceRegistrationState(I)V

    goto/16 :goto_f26

    :sswitch_dd6
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getSignalStrength(I)V

    goto/16 :goto_f26

    :sswitch_de2
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getLastCallFailCause(I)V

    goto/16 :goto_f26

    :sswitch_dee
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->rejectCall(I)V

    goto/16 :goto_f26

    :sswitch_dfa
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->conference(I)V

    goto/16 :goto_f26

    :sswitch_e06
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    goto/16 :goto_f26

    :sswitch_e12
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    goto/16 :goto_f26

    :sswitch_e1e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->hangupWaitingOrBackground(I)V

    goto/16 :goto_f26

    :sswitch_e2a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->hangup(II)V

    goto/16 :goto_f26

    :sswitch_e3a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_e4a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    invoke-virtual {v1, v13}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    goto/16 :goto_f26

    :sswitch_e5e
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getCurrentCalls(I)V

    goto/16 :goto_f26

    :sswitch_e6a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_e7a
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_e92
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f26

    :sswitch_eaa
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f26

    :sswitch_ec1
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f26

    :sswitch_ed4
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/radio/V1_6/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f26

    :sswitch_eeb
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/radio/V1_6/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f26

    :sswitch_efe
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->getIccCardStatus(I)V

    goto :goto_f26

    :sswitch_f09
    invoke-virtual {v13, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    nop

    :goto_f26
    return-void

    nop

    :sswitch_data_f28
    .sparse-switch
        0x1 -> :sswitch_f09
        0x2 -> :sswitch_efe
        0x3 -> :sswitch_eeb
        0x4 -> :sswitch_ed4
        0x5 -> :sswitch_ec1
        0x6 -> :sswitch_eaa
        0x7 -> :sswitch_e92
        0x8 -> :sswitch_e7a
        0x9 -> :sswitch_e6a
        0xa -> :sswitch_e5e
        0xb -> :sswitch_e4a
        0xc -> :sswitch_e3a
        0xd -> :sswitch_e2a
        0xe -> :sswitch_e1e
        0xf -> :sswitch_e12
        0x10 -> :sswitch_e06
        0x11 -> :sswitch_dfa
        0x12 -> :sswitch_dee
        0x13 -> :sswitch_de2
        0x14 -> :sswitch_dd6
        0x15 -> :sswitch_dca
        0x16 -> :sswitch_dbe
        0x17 -> :sswitch_db2
        0x18 -> :sswitch_da2
        0x19 -> :sswitch_d92
        0x1a -> :sswitch_d7e
        0x1b -> :sswitch_d6a
        0x1c -> :sswitch_d3d
        0x1d -> :sswitch_d29
        0x1e -> :sswitch_d19
        0x1f -> :sswitch_d0d
        0x20 -> :sswitch_d01
        0x21 -> :sswitch_cf1
        0x22 -> :sswitch_cdd
        0x23 -> :sswitch_cc9
        0x24 -> :sswitch_cb9
        0x25 -> :sswitch_ca5
        0x26 -> :sswitch_c91
        0x27 -> :sswitch_c85
        0x28 -> :sswitch_c71
        0x29 -> :sswitch_c4e
        0x2a -> :sswitch_c26
        0x2b -> :sswitch_c0e
        0x2c -> :sswitch_c02
        0x2d -> :sswitch_bf6
        0x2e -> :sswitch_be6
        0x2f -> :sswitch_bda
        0x30 -> :sswitch_bca
        0x31 -> :sswitch_bbe
        0x32 -> :sswitch_bb2
        0x33 -> :sswitch_ba2
        0x34 -> :sswitch_b92
        0x35 -> :sswitch_b86
        0x36 -> :sswitch_b7a
        0x37 -> :sswitch_b6e
        0x38 -> :sswitch_b5e
        0x39 -> :sswitch_b4a
        0x3a -> :sswitch_b3a
        0x3b -> :sswitch_b2a
        0x3c -> :sswitch_b1e
        0x3d -> :sswitch_b0e
        0x3e -> :sswitch_afe
        0x3f -> :sswitch_aee
        0x40 -> :sswitch_ae2
        0x41 -> :sswitch_ad2
        0x42 -> :sswitch_ac6
        0x43 -> :sswitch_aba
        0x44 -> :sswitch_aaa
        0x45 -> :sswitch_a9a
        0x46 -> :sswitch_a8a
        0x47 -> :sswitch_a7e
        0x48 -> :sswitch_a6e
        0x49 -> :sswitch_a62
        0x4a -> :sswitch_a52
        0x4b -> :sswitch_a46
        0x4c -> :sswitch_a36
        0x4d -> :sswitch_a1e
        0x4e -> :sswitch_a0a
        0x4f -> :sswitch_9f6
        0x50 -> :sswitch_9ea
        0x51 -> :sswitch_9da
        0x52 -> :sswitch_9ca
        0x53 -> :sswitch_9be
        0x54 -> :sswitch_9ae
        0x55 -> :sswitch_99e
        0x56 -> :sswitch_992
        0x57 -> :sswitch_97e
        0x58 -> :sswitch_96e
        0x59 -> :sswitch_962
        0x5a -> :sswitch_956
        0x5b -> :sswitch_94a
        0x5c -> :sswitch_93a
        0x5d -> :sswitch_92a
        0x5e -> :sswitch_91e
        0x5f -> :sswitch_912
        0x60 -> :sswitch_902
        0x61 -> :sswitch_8ee
        0x62 -> :sswitch_8de
        0x63 -> :sswitch_8d2
        0x64 -> :sswitch_8c6
        0x65 -> :sswitch_8b6
        0x66 -> :sswitch_89a
        0x67 -> :sswitch_88e
        0x68 -> :sswitch_87a
        0x69 -> :sswitch_866
        0x6a -> :sswitch_852
        0x6b -> :sswitch_842
        0x6c -> :sswitch_82e
        0x6d -> :sswitch_81e
        0x6e -> :sswitch_80a
        0x6f -> :sswitch_7fa
        0x70 -> :sswitch_7ea
        0x71 -> :sswitch_7d6
        0x72 -> :sswitch_7c6
        0x73 -> :sswitch_7ba
        0x74 -> :sswitch_7a2
        0x75 -> :sswitch_78e
        0x76 -> :sswitch_782
        0x77 -> :sswitch_776
        0x78 -> :sswitch_762
        0x79 -> :sswitch_74e
        0x7a -> :sswitch_742
        0x7b -> :sswitch_736
        0x7c -> :sswitch_72a
        0x7d -> :sswitch_712
        0x7e -> :sswitch_706
        0x7f -> :sswitch_6f2
        0x80 -> :sswitch_6e2
        0x81 -> :sswitch_6d2
        0x82 -> :sswitch_6ca
        0x83 -> :sswitch_6b6
        0x84 -> :sswitch_6a6
        0x85 -> :sswitch_692
        0x86 -> :sswitch_686
        0x87 -> :sswitch_672
        0x88 -> :sswitch_662
        0x89 -> :sswitch_64e
        0x8a -> :sswitch_63e
        0x8b -> :sswitch_61b
        0x8c -> :sswitch_5ec
        0x8d -> :sswitch_5aa
        0x8e -> :sswitch_596
        0x8f -> :sswitch_582
        0x90 -> :sswitch_572
        0x91 -> :sswitch_566
        0x92 -> :sswitch_532
        0x93 -> :sswitch_51e
        0x94 -> :sswitch_50e
        0x95 -> :sswitch_4da
        0x96 -> :sswitch_4c6
        0x97 -> :sswitch_4ba
        0x98 -> :sswitch_4aa
        0x99 -> :sswitch_492
        0x9a -> :sswitch_486
        0x9b -> :sswitch_47a
        0x9c -> :sswitch_462
        0x9d -> :sswitch_433
        0x9e -> :sswitch_423
        0x9f -> :sswitch_417
        0xa0 -> :sswitch_403
        0xa1 -> :sswitch_3ef
        0xa2 -> :sswitch_3bb
        0xa3 -> :sswitch_3a7
        0xa4 -> :sswitch_397
        0xa5 -> :sswitch_37f
        0xa6 -> :sswitch_36f
        0xa7 -> :sswitch_363
        0xa8 -> :sswitch_357
        0xa9 -> :sswitch_34b
        0xaa -> :sswitch_337
        0xab -> :sswitch_323
        0xac -> :sswitch_30f
        0xad -> :sswitch_2f7
        0xae -> :sswitch_2eb
        0xaf -> :sswitch_28d
        0xb0 -> :sswitch_279
        0xb1 -> :sswitch_265
        0xb2 -> :sswitch_251
        0xb3 -> :sswitch_23d
        0xb4 -> :sswitch_22d
        0xb5 -> :sswitch_21d
        0xb6 -> :sswitch_211
        0xb7 -> :sswitch_205
        0xb8 -> :sswitch_1f5
        0xb9 -> :sswitch_1e5
        0xba -> :sswitch_1d5
        0xbb -> :sswitch_1c5
        0xbc -> :sswitch_1b9
        0xbd -> :sswitch_1a5
        0xbe -> :sswitch_171
        0xbf -> :sswitch_165
        0xc0 -> :sswitch_159
        0xc1 -> :sswitch_14d
        0xc2 -> :sswitch_141
        0xc3 -> :sswitch_135
        0xc4 -> :sswitch_129
        0xc5 -> :sswitch_11d
        0xc6 -> :sswitch_109
        0xc7 -> :sswitch_fd
        0xc8 -> :sswitch_f1
        0xc9 -> :sswitch_dd
        0xf43484e -> :sswitch_cb
        0xf444247 -> :sswitch_b5
        0xf445343 -> :sswitch_a3
        0xf485348 -> :sswitch_4e
        0xf494e54 -> :sswitch_46
        0xf4c5444 -> :sswitch_44
        0xf504e47 -> :sswitch_36
        0xf524546 -> :sswitch_24
        0xf535953 -> :sswitch_1c
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.radio@1.6::IRadio"

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

    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_6/IRadio$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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
