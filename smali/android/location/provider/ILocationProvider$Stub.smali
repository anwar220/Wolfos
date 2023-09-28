# classes2.dex

.class public abstract Landroid/location/provider/ILocationProvider$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/location/provider/ILocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ILocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/ILocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_flush:I = 0x3

.field static final TRANSACTION_sendExtraCommand:I = 0x4

.field static final TRANSACTION_setLocationProviderManager:I = 0x1

.field static final TRANSACTION_setRequest:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.location.provider.ILocationProvider"

    invoke-virtual {p0, p0, v0}, Landroid/location/provider/ILocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProvider;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.location.provider.ILocationProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/provider/ILocationProvider;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/location/provider/ILocationProvider;

    return-object v1

    :cond_14
    new-instance v1, Landroid/location/provider/ILocationProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/provider/ILocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x4
    const-string v0, "sendExtraCommand"

    return-object v0

    :pswitch_8  #0x3
    const-string v0, "flush"

    return-object v0

    :pswitch_b  #0x2
    const-string v0, "setRequest"

    return-object v0

    :pswitch_e  #0x1
    const-string v0, "setLocationProviderManager"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e  #00000001
        :pswitch_b  #00000002
        :pswitch_8  #00000003
        :pswitch_5  #00000004
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/location/provider/ILocationProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.location.provider.ILocationProvider"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_52

    packed-switch p1, :pswitch_data_58

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/location/provider/ILocationProvider$Stub;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_51

    :pswitch_2f  #0x3
    invoke-virtual {p0}, Landroid/location/provider/ILocationProvider$Stub;->flush()V

    goto :goto_51

    :pswitch_33  #0x2
    sget-object v2, Landroid/location/provider/ProviderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/provider/ProviderRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProvider$Stub;->setRequest(Landroid/location/provider/ProviderRequest;)V

    goto :goto_51

    :pswitch_42  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/provider/ILocationProviderManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProviderManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProvider$Stub;->setLocationProviderManager(Landroid/location/provider/ILocationProviderManager;)V

    nop

    :goto_51
    return v1

    :pswitch_data_52
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_33  #00000002
        :pswitch_2f  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method
