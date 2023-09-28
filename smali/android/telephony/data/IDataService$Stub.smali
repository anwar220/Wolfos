# classes3.dex

.class public abstract Landroid/telephony/data/IDataService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/telephony/data/IDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/IDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.data.IDataService"

.field static final TRANSACTION_cancelHandover:I = 0xb

.field static final TRANSACTION_createDataServiceProvider:I = 0x1

.field static final TRANSACTION_deactivateDataCall:I = 0x4

.field static final TRANSACTION_registerForDataCallListChanged:I = 0x8

.field static final TRANSACTION_registerForUnthrottleApn:I = 0xc

.field static final TRANSACTION_removeDataServiceProvider:I = 0x2

.field static final TRANSACTION_requestDataCallList:I = 0x7

.field static final TRANSACTION_setDataProfile:I = 0x6

.field static final TRANSACTION_setInitialAttachApn:I = 0x5

.field static final TRANSACTION_setupDataCall:I = 0x3

.field static final TRANSACTION_startHandover:I = 0xa

.field static final TRANSACTION_unregisterForDataCallListChanged:I = 0x9

.field static final TRANSACTION_unregisterForUnthrottleApn:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.data.IDataService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/data/IDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.telephony.data.IDataService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/data/IDataService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/telephony/data/IDataService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/telephony/data/IDataService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/data/IDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_36

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xd
    const-string/jumbo v0, "unregisterForUnthrottleApn"

    return-object v0

    :pswitch_9  #0xc
    const-string/jumbo v0, "registerForUnthrottleApn"

    return-object v0

    :pswitch_d  #0xb
    const-string v0, "cancelHandover"

    return-object v0

    :pswitch_10  #0xa
    const-string/jumbo v0, "startHandover"

    return-object v0

    :pswitch_14  #0x9
    const-string/jumbo v0, "unregisterForDataCallListChanged"

    return-object v0

    :pswitch_18  #0x8
    const-string/jumbo v0, "registerForDataCallListChanged"

    return-object v0

    :pswitch_1c  #0x7
    const-string/jumbo v0, "requestDataCallList"

    return-object v0

    :pswitch_20  #0x6
    const-string/jumbo v0, "setDataProfile"

    return-object v0

    :pswitch_24  #0x5
    const-string/jumbo v0, "setInitialAttachApn"

    return-object v0

    :pswitch_28  #0x4
    const-string v0, "deactivateDataCall"

    return-object v0

    :pswitch_2b  #0x3
    const-string/jumbo v0, "setupDataCall"

    return-object v0

    :pswitch_2f  #0x2
    const-string/jumbo v0, "removeDataServiceProvider"

    return-object v0

    :pswitch_33  #0x1
    const-string v0, "createDataServiceProvider"

    return-object v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_33  #00000001
        :pswitch_2f  #00000002
        :pswitch_2b  #00000003
        :pswitch_28  #00000004
        :pswitch_24  #00000005
        :pswitch_20  #00000006
        :pswitch_1c  #00000007
        :pswitch_18  #00000008
        :pswitch_14  #00000009
        :pswitch_10  #0000000a
        :pswitch_d  #0000000b
        :pswitch_9  #0000000c
        :pswitch_5  #0000000d
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/telephony/data/IDataService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    const-string v12, "android.telephony.data.IDataService"

    const/4 v11, 0x1

    if-lt v14, v11, :cond_13

    const v0, 0xffffff

    if-gt v14, v0, :cond_13

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_13
    packed-switch v14, :pswitch_data_1cc

    move-object/from16 v10, p3

    packed-switch v14, :pswitch_data_1d2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    move-object/from16 v10, p3

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_26  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->unregisterForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_1cb

    :pswitch_3e  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->registerForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_1cb

    :pswitch_56  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/telephony/data/IDataService$Stub;->cancelHandover(IILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_1cb

    :pswitch_72  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/telephony/data/IDataService$Stub;->startHandover(IILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_1cb

    :pswitch_8e  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->unregisterForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_1cb

    :pswitch_a6  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_1cb

    :pswitch_be  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->requestDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_1cb

    :pswitch_d6  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_1cb

    :pswitch_f8  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_1cb

    :pswitch_11c  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_1cb

    :pswitch_13c  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    sget-object v0, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/telephony/data/DataProfile;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/net/LinkProperties;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    sget-object v0, Landroid/telephony/data/NetworkSliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/telephony/data/NetworkSliceInfo;

    sget-object v0, Landroid/telephony/data/TrafficDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move/from16 v28, v11

    move/from16 v11, v26

    move-object/from16 v29, v12

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/telephony/data/IDataService$Stub;->setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V

    goto :goto_1cb

    :pswitch_1ad  #0x2
    move/from16 v28, v11

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/telephony/data/IDataService$Stub;->removeDataServiceProvider(I)V

    goto :goto_1cb

    :pswitch_1bc  #0x1
    move/from16 v28, v11

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/telephony/data/IDataService$Stub;->createDataServiceProvider(I)V

    nop

    :goto_1cb
    return v28

    :pswitch_data_1cc
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_1d2
    .packed-switch 0x1
        :pswitch_1bc  #00000001
        :pswitch_1ad  #00000002
        :pswitch_13c  #00000003
        :pswitch_11c  #00000004
        :pswitch_f8  #00000005
        :pswitch_d6  #00000006
        :pswitch_be  #00000007
        :pswitch_a6  #00000008
        :pswitch_8e  #00000009
        :pswitch_72  #0000000a
        :pswitch_56  #0000000b
        :pswitch_3e  #0000000c
        :pswitch_26  #0000000d
    .end packed-switch
.end method
