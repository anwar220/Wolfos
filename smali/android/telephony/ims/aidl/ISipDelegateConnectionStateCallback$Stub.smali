# classes3.dex

.class public abstract Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onConfigurationChanged:I = 0x4

.field static final TRANSACTION_onCreated:I = 0x1

.field static final TRANSACTION_onDestroyed:I = 0x5

.field static final TRANSACTION_onFeatureTagStatusChanged:I = 0x2

.field static final TRANSACTION_onImsConfigurationChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.ims.aidl.ISipDelegateConnectionStateCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.telephony.ims.aidl.ISipDelegateConnectionStateCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x5
    const-string/jumbo v0, "onDestroyed"

    return-object v0

    :pswitch_9  #0x4
    const-string/jumbo v0, "onConfigurationChanged"

    return-object v0

    :pswitch_d  #0x3
    const-string/jumbo v0, "onImsConfigurationChanged"

    return-object v0

    :pswitch_11  #0x2
    const-string/jumbo v0, "onFeatureTagStatusChanged"

    return-object v0

    :pswitch_15  #0x1
    const-string/jumbo v0, "onCreated"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15  #00000001
        :pswitch_11  #00000002
        :pswitch_d  #00000003
        :pswitch_9  #00000004
        :pswitch_5  #00000005
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.telephony.ims.aidl.ISipDelegateConnectionStateCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_6a

    packed-switch p1, :pswitch_data_70

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;->onDestroyed(I)V

    goto :goto_69

    :pswitch_27  #0x4
    sget-object v2, Landroid/telephony/ims/SipDelegateConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    goto :goto_69

    :pswitch_36  #0x3
    sget-object v2, Landroid/telephony/ims/SipDelegateImsConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/SipDelegateImsConfiguration;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;->onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    goto :goto_69

    :pswitch_45  #0x2
    sget-object v2, Landroid/telephony/ims/DelegateRegistrationState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/DelegateRegistrationState;

    sget-object v3, Landroid/telephony/ims/FeatureTagState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;->onFeatureTagStatusChanged(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/List;)V

    goto :goto_69

    :pswitch_5a  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;->onCreated(Landroid/telephony/ims/aidl/ISipDelegate;)V

    nop

    :goto_69
    return v1

    :pswitch_data_6a
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_5a  #00000001
        :pswitch_45  #00000002
        :pswitch_36  #00000003
        :pswitch_27  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method