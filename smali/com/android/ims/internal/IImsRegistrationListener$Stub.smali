# classes4.dex

.class public abstract Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/ims/internal/IImsRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsRegistrationListener"

.field static final TRANSACTION_registrationAssociatedUriChanged:I = 0xb

.field static final TRANSACTION_registrationChangeFailed:I = 0xc

.field static final TRANSACTION_registrationConnected:I = 0x1

.field static final TRANSACTION_registrationConnectedWithRadioTech:I = 0x3

.field static final TRANSACTION_registrationDisconnected:I = 0x5

.field static final TRANSACTION_registrationFeatureCapabilityChanged:I = 0x9

.field static final TRANSACTION_registrationProgressing:I = 0x2

.field static final TRANSACTION_registrationProgressingWithRadioTech:I = 0x4

.field static final TRANSACTION_registrationResumed:I = 0x6

.field static final TRANSACTION_registrationServiceCapabilityChanged:I = 0x8

.field static final TRANSACTION_registrationSuspended:I = 0x7

.field static final TRANSACTION_voiceMessageCountUpdate:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.ims.internal.IImsRegistrationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsRegistrationListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsRegistrationListener;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_36

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xc
    const-string/jumbo v0, "registrationChangeFailed"

    return-object v0

    :pswitch_9  #0xb
    const-string/jumbo v0, "registrationAssociatedUriChanged"

    return-object v0

    :pswitch_d  #0xa
    const-string/jumbo v0, "voiceMessageCountUpdate"

    return-object v0

    :pswitch_11  #0x9
    const-string/jumbo v0, "registrationFeatureCapabilityChanged"

    return-object v0

    :pswitch_15  #0x8
    const-string/jumbo v0, "registrationServiceCapabilityChanged"

    return-object v0

    :pswitch_19  #0x7
    const-string/jumbo v0, "registrationSuspended"

    return-object v0

    :pswitch_1d  #0x6
    const-string/jumbo v0, "registrationResumed"

    return-object v0

    :pswitch_21  #0x5
    const-string/jumbo v0, "registrationDisconnected"

    return-object v0

    :pswitch_25  #0x4
    const-string/jumbo v0, "registrationProgressingWithRadioTech"

    return-object v0

    :pswitch_29  #0x3
    const-string/jumbo v0, "registrationConnectedWithRadioTech"

    return-object v0

    :pswitch_2d  #0x2
    const-string/jumbo v0, "registrationProgressing"

    return-object v0

    :pswitch_31  #0x1
    const-string/jumbo v0, "registrationConnected"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31  #00000001
        :pswitch_2d  #00000002
        :pswitch_29  #00000003
        :pswitch_25  #00000004
        :pswitch_21  #00000005
        :pswitch_1d  #00000006
        :pswitch_19  #00000007
        :pswitch_15  #00000008
        :pswitch_11  #00000009
        :pswitch_d  #0000000a
        :pswitch_9  #0000000b
        :pswitch_5  #0000000c
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.ims.internal.IImsRegistrationListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_a2

    packed-switch p1, :pswitch_data_a8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_a1

    :pswitch_30  #0xb
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    goto :goto_a1

    :pswitch_3f  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->voiceMessageCountUpdate(I)V

    goto :goto_a1

    :pswitch_4a  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationFeatureCapabilityChanged(I[I[I)V

    goto :goto_a1

    :pswitch_5d  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationServiceCapabilityChanged(II)V

    goto :goto_a1

    :pswitch_6c  #0x7
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationSuspended()V

    goto :goto_a1

    :pswitch_70  #0x6
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationResumed()V

    goto :goto_a1

    :pswitch_74  #0x5
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_a1

    :pswitch_83  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationProgressingWithRadioTech(I)V

    goto :goto_a1

    :pswitch_8e  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationConnectedWithRadioTech(I)V

    goto :goto_a1

    :pswitch_99  #0x2
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationProgressing()V

    goto :goto_a1

    :pswitch_9d  #0x1
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationConnected()V

    nop

    :goto_a1
    return v1

    :pswitch_data_a2
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_9d  #00000001
        :pswitch_99  #00000002
        :pswitch_8e  #00000003
        :pswitch_83  #00000004
        :pswitch_74  #00000005
        :pswitch_70  #00000006
        :pswitch_6c  #00000007
        :pswitch_5d  #00000008
        :pswitch_4a  #00000009
        :pswitch_3f  #0000000a
        :pswitch_30  #0000000b
        :pswitch_1c  #0000000c
    .end packed-switch
.end method
