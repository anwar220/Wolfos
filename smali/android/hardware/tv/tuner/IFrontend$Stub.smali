# classes2.dex

.class public abstract Landroid/hardware/tv/tuner/IFrontend$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/hardware/tv/tuner/IFrontend;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IFrontend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IFrontend$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x4

.field static final TRANSACTION_getFrontendStatusReadiness:I = 0xd

.field static final TRANSACTION_getHardwareInfo:I = 0xb

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getStatus:I = 0x7

.field static final TRANSACTION_linkCiCam:I = 0x9

.field static final TRANSACTION_removeOutputPid:I = 0xc

.field static final TRANSACTION_scan:I = 0x5

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setLnb:I = 0x8

.field static final TRANSACTION_stopScan:I = 0x6

.field static final TRANSACTION_stopTune:I = 0x3

.field static final TRANSACTION_tune:I = 0x2

.field static final TRANSACTION_unlinkCiCam:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/tv/tuner/IFrontend$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFrontend;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/IFrontend$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/IFrontend;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IFrontend;

    return-object v1

    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/IFrontend$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IFrontend$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sget-object v0, Landroid/hardware/tv/tuner/IFrontend$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_f2

    packed-switch p1, :pswitch_data_100

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_32  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getFrontendStatusReadiness([I)[I

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_f1

    :pswitch_45  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->removeOutputPid(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_f1

    :pswitch_54  #0xb
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getHardwareInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_f1

    :pswitch_60  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->unlinkCiCam(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_f1

    :pswitch_6f  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->linkCiCam(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_f1

    :pswitch_82  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->setLnb(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f1

    :pswitch_90  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getStatus([I)[Landroid/hardware/tv/tuner/FrontendStatus;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_f1

    :pswitch_a2  #0x6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->stopScan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f1

    :pswitch_a9  #0x5
    sget-object v2, Landroid/hardware/tv/tuner/FrontendSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/FrontendSettings;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/tv/tuner/IFrontend$Stub;->scan(Landroid/hardware/tv/tuner/FrontendSettings;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f1

    :pswitch_bf  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->close()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f1

    :pswitch_c6  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->stopTune()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f1

    :pswitch_cd  #0x2
    sget-object v2, Landroid/hardware/tv/tuner/FrontendSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/FrontendSettings;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->tune(Landroid/hardware/tv/tuner/FrontendSettings;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f1

    :pswitch_df  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/tv/tuner/IFrontendCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFrontendCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFrontend$Stub;->setCallback(Landroid/hardware/tv/tuner/IFrontendCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_f1
    return v1

    :sswitch_data_f2
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_df  #00000001
        :pswitch_cd  #00000002
        :pswitch_c6  #00000003
        :pswitch_bf  #00000004
        :pswitch_a9  #00000005
        :pswitch_a2  #00000006
        :pswitch_90  #00000007
        :pswitch_82  #00000008
        :pswitch_6f  #00000009
        :pswitch_60  #0000000a
        :pswitch_54  #0000000b
        :pswitch_45  #0000000c
        :pswitch_32  #0000000d
    .end packed-switch
.end method
