# classes2.dex

.class public abstract Landroid/location/provider/ILocationProviderManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/location/provider/ILocationProviderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ILocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/ILocationProviderManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onFlushComplete:I = 0x6

.field static final TRANSACTION_onInitialize:I = 0x1

.field static final TRANSACTION_onReportLocation:I = 0x4

.field static final TRANSACTION_onReportLocations:I = 0x5

.field static final TRANSACTION_onSetAllowed:I = 0x2

.field static final TRANSACTION_onSetProperties:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.location.provider.ILocationProviderManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/provider/ILocationProviderManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProviderManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.location.provider.ILocationProviderManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/provider/ILocationProviderManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/location/provider/ILocationProviderManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/location/provider/ILocationProviderManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/provider/ILocationProviderManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x6
    const-string v0, "onFlushComplete"

    return-object v0

    :pswitch_8  #0x5
    const-string v0, "onReportLocations"

    return-object v0

    :pswitch_b  #0x4
    const-string v0, "onReportLocation"

    return-object v0

    :pswitch_e  #0x3
    const-string v0, "onSetProperties"

    return-object v0

    :pswitch_11  #0x2
    const-string v0, "onSetAllowed"

    return-object v0

    :pswitch_14  #0x1
    const-string v0, "onInitialize"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14  #00000001
        :pswitch_11  #00000002
        :pswitch_e  #00000003
        :pswitch_b  #00000004
        :pswitch_8  #00000005
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

    invoke-static {p1}, Landroid/location/provider/ILocationProviderManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.location.provider.ILocationProviderManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_80

    packed-switch p1, :pswitch_data_86

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x6
    invoke-virtual {p0}, Landroid/location/provider/ILocationProviderManager$Stub;->onFlushComplete()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7f

    :pswitch_23  #0x5
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProviderManager$Stub;->onReportLocations(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7f

    :pswitch_33  #0x4
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProviderManager$Stub;->onReportLocation(Landroid/location/Location;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7f

    :pswitch_45  #0x3
    sget-object v2, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/provider/ProviderProperties;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProviderManager$Stub;->onSetProperties(Landroid/location/provider/ProviderProperties;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7f

    :pswitch_57  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProviderManager$Stub;->onSetAllowed(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_7f

    :pswitch_65  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    sget-object v3, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/provider/ProviderProperties;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/location/provider/ILocationProviderManager$Stub;->onInitialize(ZLandroid/location/provider/ProviderProperties;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_7f
    return v1

    :pswitch_data_80
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_65  #00000001
        :pswitch_57  #00000002
        :pswitch_45  #00000003
        :pswitch_33  #00000004
        :pswitch_23  #00000005
        :pswitch_1c  #00000006
    .end packed-switch
.end method
