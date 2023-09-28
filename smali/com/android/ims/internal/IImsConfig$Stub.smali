# classes4.dex

.class public abstract Lcom/android/ims/internal/IImsConfig$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/ims/internal/IImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsConfig"

.field static final TRANSACTION_getFeatureValue:I = 0x5

.field static final TRANSACTION_getProvisionedStringValue:I = 0x2

.field static final TRANSACTION_getProvisionedValue:I = 0x1

.field static final TRANSACTION_getVideoQuality:I = 0x8

.field static final TRANSACTION_getVolteProvisioned:I = 0x7

.field static final TRANSACTION_setFeatureValue:I = 0x6

.field static final TRANSACTION_setProvisionedStringValue:I = 0x4

.field static final TRANSACTION_setProvisionedValue:I = 0x3

.field static final TRANSACTION_setVideoQuality:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsConfig;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.ims.internal.IImsConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsConfig;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsConfig;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_24

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x9
    const-string/jumbo v0, "setVideoQuality"

    return-object v0

    :pswitch_9  #0x8
    const-string v0, "getVideoQuality"

    return-object v0

    :pswitch_c  #0x7
    const-string v0, "getVolteProvisioned"

    return-object v0

    :pswitch_f  #0x6
    const-string/jumbo v0, "setFeatureValue"

    return-object v0

    :pswitch_13  #0x5
    const-string v0, "getFeatureValue"

    return-object v0

    :pswitch_16  #0x4
    const-string/jumbo v0, "setProvisionedStringValue"

    return-object v0

    :pswitch_1a  #0x3
    const-string/jumbo v0, "setProvisionedValue"

    return-object v0

    :pswitch_1e  #0x2
    const-string v0, "getProvisionedStringValue"

    return-object v0

    :pswitch_21  #0x1
    const-string v0, "getProvisionedValue"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21  #00000001
        :pswitch_1e  #00000002
        :pswitch_1a  #00000003
        :pswitch_16  #00000004
        :pswitch_13  #00000005
        :pswitch_f  #00000006
        :pswitch_c  #00000007
        :pswitch_9  #00000008
        :pswitch_5  #00000009
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/ims/internal/IImsConfig$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.ims.internal.IImsConfig"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_d0

    packed-switch p1, :pswitch_data_d6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsConfig$Stub;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V

    goto/16 :goto_ce

    :pswitch_30  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsConfig$Stub;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V

    goto/16 :goto_ce

    :pswitch_40  #0x7
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsConfig$Stub;->getVolteProvisioned()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_ce

    :pswitch_4c  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/ims/internal/IImsConfig$Stub;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    goto :goto_ce

    :pswitch_67  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsConfig$Stub;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V

    goto :goto_ce

    :pswitch_7e  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsConfig$Stub;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ce

    :pswitch_94  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsConfig$Stub;->setProvisionedValue(II)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ce

    :pswitch_aa  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsConfig$Stub;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_ce

    :pswitch_bc  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsConfig$Stub;->getProvisionedValue(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_ce
    return v1

    nop

    :pswitch_data_d0
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_bc  #00000001
        :pswitch_aa  #00000002
        :pswitch_94  #00000003
        :pswitch_7e  #00000004
        :pswitch_67  #00000005
        :pswitch_4c  #00000006
        :pswitch_40  #00000007
        :pswitch_30  #00000008
        :pswitch_1c  #00000009
    .end packed-switch
.end method
