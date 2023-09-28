# classes.dex

.class public abstract Landroid/companion/ICompanionDeviceService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/companion/ICompanionDeviceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDeviceAppeared:I = 0x1

.field static final TRANSACTION_onDeviceDisappeared:I = 0x2

.field static final TRANSACTION_onDispatchMessage:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.companion.ICompanionDeviceService"

    invoke-virtual {p0, p0, v0}, Landroid/companion/ICompanionDeviceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.companion.ICompanionDeviceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/companion/ICompanionDeviceService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/companion/ICompanionDeviceService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/companion/ICompanionDeviceService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/ICompanionDeviceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x3
    const-string/jumbo v0, "onDispatchMessage"

    return-object v0

    :pswitch_9  #0x2
    const-string/jumbo v0, "onDeviceDisappeared"

    return-object v0

    :pswitch_d  #0x1
    const-string/jumbo v0, "onDeviceAppeared"

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

    invoke-static {p1}, Landroid/companion/ICompanionDeviceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.companion.ICompanionDeviceService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_4e

    packed-switch p1, :pswitch_data_54

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceService$Stub;->onDispatchMessage(II[B)V

    goto :goto_4d

    :pswitch_2f  #0x2
    sget-object v2, Landroid/companion/AssociationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceService$Stub;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    goto :goto_4d

    :pswitch_3e  #0x1
    sget-object v2, Landroid/companion/AssociationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceService$Stub;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    nop

    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_2f  #00000002
        :pswitch_1c  #00000003
    .end packed-switch
.end method
