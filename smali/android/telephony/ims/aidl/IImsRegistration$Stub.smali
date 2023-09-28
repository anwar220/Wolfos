# classes3.dex

.class public abstract Landroid/telephony/ims/aidl/IImsRegistration$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRegistration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRegistration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addRegistrationCallback:I = 0x2

.field static final TRANSACTION_getRegistrationTechnology:I = 0x1

.field static final TRANSACTION_removeRegistrationCallback:I = 0x3

.field static final TRANSACTION_triggerFullNetworkRegistration:I = 0x4

.field static final TRANSACTION_triggerSipDelegateDeregistration:I = 0x6

.field static final TRANSACTION_triggerUpdateSipDelegateRegistration:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.ims.aidl.IImsRegistration"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsRegistration"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRegistration;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v1

    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsRegistration$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x6
    const-string/jumbo v0, "triggerSipDelegateDeregistration"

    return-object v0

    :pswitch_9  #0x5
    const-string/jumbo v0, "triggerUpdateSipDelegateRegistration"

    return-object v0

    :pswitch_d  #0x4
    const-string/jumbo v0, "triggerFullNetworkRegistration"

    return-object v0

    :pswitch_11  #0x3
    const-string/jumbo v0, "removeRegistrationCallback"

    return-object v0

    :pswitch_15  #0x2
    const-string v0, "addRegistrationCallback"

    return-object v0

    :pswitch_18  #0x1
    const-string v0, "getRegistrationTechnology"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18  #00000001
        :pswitch_15  #00000002
        :pswitch_11  #00000003
        :pswitch_d  #00000004
        :pswitch_9  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.telephony.ims.aidl.IImsRegistration"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_5e

    packed-switch p1, :pswitch_data_64

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x6
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->triggerSipDelegateDeregistration()V

    goto :goto_5c

    :pswitch_20  #0x5
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->triggerUpdateSipDelegateRegistration()V

    goto :goto_5c

    :pswitch_24  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->triggerFullNetworkRegistration(ILjava/lang/String;)V

    goto :goto_5c

    :pswitch_33  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    goto :goto_5c

    :pswitch_42  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    goto :goto_5c

    :pswitch_51  #0x1
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->getRegistrationTechnology()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_51  #00000001
        :pswitch_42  #00000002
        :pswitch_33  #00000003
        :pswitch_24  #00000004
        :pswitch_20  #00000005
        :pswitch_1c  #00000006
    .end packed-switch
.end method
