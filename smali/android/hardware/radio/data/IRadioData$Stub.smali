# classes2.dex

.class public abstract Landroid/hardware/radio/data/IRadioData$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/radio/data/IRadioData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/IRadioData$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_allocatePduSessionId:I = 0x1

.field static final TRANSACTION_cancelHandover:I = 0x2

.field static final TRANSACTION_deactivateDataCall:I = 0x3

.field static final TRANSACTION_getDataCallList:I = 0x4

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getSlicingConfig:I = 0x5

.field static final TRANSACTION_releasePduSessionId:I = 0x6

.field static final TRANSACTION_responseAcknowledgement:I = 0x7

.field static final TRANSACTION_setDataAllowed:I = 0x8

.field static final TRANSACTION_setDataProfile:I = 0x9

.field static final TRANSACTION_setDataThrottling:I = 0xa

.field static final TRANSACTION_setInitialAttachApn:I = 0xb

.field static final TRANSACTION_setResponseFunctions:I = 0xc

.field static final TRANSACTION_setupDataCall:I = 0xd

.field static final TRANSACTION_startHandover:I = 0xe

.field static final TRANSACTION_startKeepalive:I = 0xf

.field static final TRANSACTION_stopKeepalive:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioData$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/data/IRadioData$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioData;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/data/IRadioData;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/data/IRadioData;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/radio/data/IRadioData$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/data/IRadioData$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    sget-object v15, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v10, 0x1

    if-lt v12, v10, :cond_15

    const v0, 0xffffff

    if-gt v12, v0, :cond_15

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    sparse-switch v12, :sswitch_data_1a0

    packed-switch v12, :pswitch_data_1ae

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_20
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/data/IRadioData$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :sswitch_2f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/data/IRadioData$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_3a  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->stopKeepalive(II)V

    move/from16 v26, v10

    goto/16 :goto_19f

    :pswitch_4c  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/data/KeepaliveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/data/KeepaliveRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->startKeepalive(ILandroid/hardware/radio/data/KeepaliveRequest;)V

    move/from16 v26, v10

    goto/16 :goto_19f

    :pswitch_62  #0xe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->startHandover(II)V

    move/from16 v26, v10

    goto/16 :goto_19f

    :pswitch_74  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    sget-object v0, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/hardware/radio/data/DataProfileInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    sget-object v0, Landroid/hardware/radio/data/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, [Landroid/hardware/radio/data/LinkAddress;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    sget-object v0, Landroid/hardware/radio/data/SliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/hardware/radio/data/SliceInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v26, v10

    move/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/radio/data/IRadioData$Stub;->setupDataCall(IILandroid/hardware/radio/data/DataProfileInfo;ZI[Landroid/hardware/radio/data/LinkAddress;[Ljava/lang/String;ILandroid/hardware/radio/data/SliceInfo;Z)V

    goto/16 :goto_19f

    :pswitch_ce  #0xc
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataResponse;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataIndication;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->setResponseFunctions(Landroid/hardware/radio/data/IRadioDataResponse;Landroid/hardware/radio/data/IRadioDataIndication;)V

    goto/16 :goto_19f

    :pswitch_e8  #0xb
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/data/DataProfileInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->setInitialAttachApn(ILandroid/hardware/radio/data/DataProfileInfo;)V

    goto/16 :goto_19f

    :pswitch_fe  #0xa
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataThrottling(IBJ)V

    goto/16 :goto_19f

    :pswitch_114  #0x9
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/data/DataProfileInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataProfile(I[Landroid/hardware/radio/data/DataProfileInfo;)V

    goto/16 :goto_19f

    :pswitch_12a  #0x8
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataAllowed(IZ)V

    goto :goto_19f

    :pswitch_13b  #0x7
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/data/IRadioData$Stub;->responseAcknowledgement()V

    goto :goto_19f

    :pswitch_141  #0x6
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->releasePduSessionId(II)V

    goto :goto_19f

    :pswitch_152  #0x5
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/hardware/radio/data/IRadioData$Stub;->getSlicingConfig(I)V

    goto :goto_19f

    :pswitch_15f  #0x4
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/hardware/radio/data/IRadioData$Stub;->getDataCallList(I)V

    goto :goto_19f

    :pswitch_16c  #0x3
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->deactivateDataCall(III)V

    goto :goto_19f

    :pswitch_181  #0x2
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->cancelHandover(II)V

    goto :goto_19f

    :pswitch_192  #0x1
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v11, v0}, Landroid/hardware/radio/data/IRadioData$Stub;->allocatePduSessionId(I)V

    nop

    :goto_19f
    return v26

    :sswitch_data_1a0
    .sparse-switch
        0xfffffe -> :sswitch_2f
        0xffffff -> :sswitch_24
        0x5f4e5446 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_192  #00000001
        :pswitch_181  #00000002
        :pswitch_16c  #00000003
        :pswitch_15f  #00000004
        :pswitch_152  #00000005
        :pswitch_141  #00000006
        :pswitch_13b  #00000007
        :pswitch_12a  #00000008
        :pswitch_114  #00000009
        :pswitch_fe  #0000000a
        :pswitch_e8  #0000000b
        :pswitch_ce  #0000000c
        :pswitch_74  #0000000d
        :pswitch_62  #0000000e
        :pswitch_4c  #0000000f
        :pswitch_3a  #00000010
    .end packed-switch
.end method
