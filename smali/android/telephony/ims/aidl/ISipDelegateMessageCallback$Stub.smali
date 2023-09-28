# classes3.dex

.class public abstract Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onMessageReceived:I = 0x1

.field static final TRANSACTION_onMessageSendFailure:I = 0x3

.field static final TRANSACTION_onMessageSent:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.ims.aidl.ISipDelegateMessageCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.telephony.ims.aidl.ISipDelegateMessageCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x3
    const-string/jumbo v0, "onMessageSendFailure"

    return-object v0

    :pswitch_9  #0x2
    const-string/jumbo v0, "onMessageSent"

    return-object v0

    :pswitch_d  #0x1
    const-string/jumbo v0, "onMessageReceived"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d  #00000001
        :pswitch_9  #00000002
        :pswitch_5  #00000003
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.telephony.ims.aidl.ISipDelegateMessageCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_46

    packed-switch p1, :pswitch_data_4c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->onMessageSendFailure(Ljava/lang/String;I)V

    goto :goto_45

    :pswitch_2b  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->onMessageSent(Ljava/lang/String;)V

    goto :goto_45

    :pswitch_36  #0x1
    sget-object v2, Landroid/telephony/ims/SipMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/SipMessage;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    nop

    :goto_45
    return v1

    :pswitch_data_46
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_36  #00000001
        :pswitch_2b  #00000002
        :pswitch_1c  #00000003
    .end packed-switch
.end method
