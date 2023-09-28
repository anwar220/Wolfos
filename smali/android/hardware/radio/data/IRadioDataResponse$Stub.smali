# classes2.dex

.class public abstract Landroid/hardware/radio/data/IRadioDataResponse$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/radio/data/IRadioDataResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acknowledgeRequest:I = 0x1

.field static final TRANSACTION_allocatePduSessionIdResponse:I = 0x2

.field static final TRANSACTION_cancelHandoverResponse:I = 0x3

.field static final TRANSACTION_deactivateDataCallResponse:I = 0x4

.field static final TRANSACTION_getDataCallListResponse:I = 0x5

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getSlicingConfigResponse:I = 0x6

.field static final TRANSACTION_releasePduSessionIdResponse:I = 0x7

.field static final TRANSACTION_setDataAllowedResponse:I = 0x8

.field static final TRANSACTION_setDataProfileResponse:I = 0x9

.field static final TRANSACTION_setDataThrottlingResponse:I = 0xa

.field static final TRANSACTION_setInitialAttachApnResponse:I = 0xb

.field static final TRANSACTION_setupDataCallResponse:I = 0xc

.field static final TRANSACTION_startHandoverResponse:I = 0xd

.field static final TRANSACTION_startKeepaliveResponse:I = 0xe

.field static final TRANSACTION_stopKeepaliveResponse:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataResponse;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/data/IRadioDataResponse;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/data/IRadioDataResponse;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_13c

    packed-switch p1, :pswitch_data_14a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0xf
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_13b

    :pswitch_42  #0xe
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    sget-object v3, Landroid/hardware/radio/data/KeepaliveStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/KeepaliveStatus;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/KeepaliveStatus;)V

    goto/16 :goto_13b

    :pswitch_5a  #0xd
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->startHandoverResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_13b

    :pswitch_6a  #0xc
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    sget-object v3, Landroid/hardware/radio/data/SetupDataCallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/SetupDataCallResult;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/SetupDataCallResult;)V

    goto/16 :goto_13b

    :pswitch_82  #0xb
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_13b

    :pswitch_92  #0xa
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setDataThrottlingResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_13b

    :pswitch_a2  #0x9
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_13b

    :pswitch_b2  #0x8
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_13b

    :pswitch_c2  #0x7
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->releasePduSessionIdResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto :goto_13b

    :pswitch_d1  #0x6
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    sget-object v3, Landroid/hardware/radio/data/SlicingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/SlicingConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->getSlicingConfigResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/SlicingConfig;)V

    goto :goto_13b

    :pswitch_e8  #0x5
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    sget-object v3, Landroid/hardware/radio/data/SetupDataCallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/data/SetupDataCallResult;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/data/SetupDataCallResult;)V

    goto :goto_13b

    :pswitch_ff  #0x4
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto :goto_13b

    :pswitch_10e  #0x3
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->cancelHandoverResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto :goto_13b

    :pswitch_11d  #0x2
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->allocatePduSessionIdResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    goto :goto_13b

    :pswitch_130  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->acknowledgeRequest(I)V

    nop

    :goto_13b
    return v1

    :sswitch_data_13c
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_130  #00000001
        :pswitch_11d  #00000002
        :pswitch_10e  #00000003
        :pswitch_ff  #00000004
        :pswitch_e8  #00000005
        :pswitch_d1  #00000006
        :pswitch_c2  #00000007
        :pswitch_b2  #00000008
        :pswitch_a2  #00000009
        :pswitch_92  #0000000a
        :pswitch_82  #0000000b
        :pswitch_6a  #0000000c
        :pswitch_5a  #0000000d
        :pswitch_42  #0000000e
        :pswitch_32  #0000000f
    .end packed-switch
.end method
