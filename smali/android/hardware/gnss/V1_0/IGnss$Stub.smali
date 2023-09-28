# classes2.dex

.class public abstract Landroid/hardware/gnss/V1_0/IGnss$Stub;
.super Landroid/os/HwBinder;

# interfaces
.implements Landroid/hardware/gnss/V1_0/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnss;
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

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_20

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
    .array-data 1
        -0x13t
        -0x1at
        -0x69t
        0x10t
        -0x3dt
        -0x57t
        0x5ct
        0x2ct
        -0x42t
        -0x7ft
        -0x72t
        0x6ct
        -0x75t
        -0x49t
        0x2ct
        0x78t
        0x16t
        -0x7et
        0x3ft
        -0x54t
        -0x1bt
        -0x4t
        0x21t
        -0x3ft
        0x77t
        0x31t
        -0x4et
        0x6ft
        0x41t
        -0x27t
        0x4dt
        0x65t
    .end array-data

    :array_34
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnss"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.hardware.gnss@1.0::IGnss"

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
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "android.hardware.gnss@1.0::IGnss"

    const/4 v9, 0x0

    sparse-switch p1, :sswitch_data_294

    goto/16 :goto_293

    :sswitch_10
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->notifySyspropsChanged()V

    goto/16 :goto_293

    :sswitch_18
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, v8}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_2a
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->ping()V

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_38
    goto/16 :goto_293

    :sswitch_3a
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->setHALInstrumentation()V

    goto/16 :goto_293

    :sswitch_42
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v4, 0x0

    :goto_69
    if-ge v4, v2, :cond_8a

    mul-int/lit8 v5, v4, 0x20

    int-to-long v9, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v5, :cond_82

    array-length v11, v5

    const/16 v12, 0x20

    if-ne v11, v12, :cond_82

    invoke-virtual {v3, v9, v10, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    :cond_82
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_8a
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_97
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_a9
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_bf
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_d1
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssBatching()Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez v0, :cond_de

    goto :goto_e2

    :cond_de
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_e2
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_ea
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssDebug()Landroid/hardware/gnss/V1_0/IGnssDebug;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez v0, :cond_f7

    goto :goto_fb

    :cond_f7
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_fb
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_103
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssConfiguration()Landroid/hardware/gnss/V1_0/IGnssConfiguration;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez v0, :cond_110

    goto :goto_114

    :cond_110
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_114
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_11c
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionXtra()Landroid/hardware/gnss/V1_0/IGnssXtra;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez v0, :cond_129

    goto :goto_12d

    :cond_129
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssXtra;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_12d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_135
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssNavigationMessage()Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez v0, :cond_142

    goto :goto_146

    :cond_142
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_146
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_14e
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssMeasurement()Landroid/hardware/gnss/V1_0/IGnssMeasurement;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez v0, :cond_15b

    goto :goto_15f

    :cond_15b
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_15f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_167
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssNi()Landroid/hardware/gnss/V1_0/IGnssNi;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez v0, :cond_174

    goto :goto_178

    :cond_174
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssNi;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_178
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_180
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionAGnss()Landroid/hardware/gnss/V1_0/IAGnss;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez v0, :cond_18d

    goto :goto_191

    :cond_18d
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_191
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_199
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionGnssGeofencing()Landroid/hardware/gnss/V1_0/IGnssGeofencing;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez v0, :cond_1a6

    goto :goto_1aa

    :cond_1a6
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1aa
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_1b2
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->getExtensionAGnssRil()Landroid/hardware/gnss/V1_0/IAGnssRil;

    move-result-object v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    if-nez v0, :cond_1bf

    goto :goto_1c3

    :cond_1bf
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1c3
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_1cb
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    move-object v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->setPositionMode(BIIII)Z

    move-result v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_1f7
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->deleteAidingData(S)V

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_293

    :sswitch_209
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v14

    move-object v0, p0

    move-wide v1, v10

    move-wide v3, v12

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->injectLocation(DDF)Z

    move-result v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_293

    :sswitch_22a
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    move-object v0, p0

    move-wide v1, v10

    move-wide v3, v12

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->injectTime(JJI)Z

    move-result v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_293

    :sswitch_24b
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->cleanup()V

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_293

    :sswitch_258
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->stop()Z

    move-result v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_293

    :sswitch_269
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->start()Z

    move-result v0

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_293

    :sswitch_27a
    invoke-virtual {v7, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IGnssCallback;)Z

    move-result v1

    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    nop

    :goto_293
    return-void

    :sswitch_data_294
    .sparse-switch
        0x1 -> :sswitch_27a
        0x2 -> :sswitch_269
        0x3 -> :sswitch_258
        0x4 -> :sswitch_24b
        0x5 -> :sswitch_22a
        0x6 -> :sswitch_209
        0x7 -> :sswitch_1f7
        0x8 -> :sswitch_1cb
        0x9 -> :sswitch_1b2
        0xa -> :sswitch_199
        0xb -> :sswitch_180
        0xc -> :sswitch_167
        0xd -> :sswitch_14e
        0xe -> :sswitch_135
        0xf -> :sswitch_11c
        0x10 -> :sswitch_103
        0x11 -> :sswitch_ea
        0x12 -> :sswitch_d1
        0xf43484e -> :sswitch_bf
        0xf444247 -> :sswitch_a9
        0xf445343 -> :sswitch_97
        0xf485348 -> :sswitch_42
        0xf494e54 -> :sswitch_3a
        0xf4c5444 -> :sswitch_38
        0xf504e47 -> :sswitch_2a
        0xf524546 -> :sswitch_18
        0xf535953 -> :sswitch_10
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.gnss@1.0::IGnss"

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

    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

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
