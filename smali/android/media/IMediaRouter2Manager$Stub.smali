# classes2.dex

.class public abstract Landroid/media/IMediaRouter2Manager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/media/IMediaRouter2Manager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouter2Manager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_notifyDiscoveryPreferenceChanged:I = 0x4

.field static final TRANSACTION_notifyRequestFailed:I = 0x8

.field static final TRANSACTION_notifyRoutesAdded:I = 0x5

.field static final TRANSACTION_notifyRoutesChanged:I = 0x7

.field static final TRANSACTION_notifyRoutesRemoved:I = 0x6

.field static final TRANSACTION_notifySessionCreated:I = 0x1

.field static final TRANSACTION_notifySessionReleased:I = 0x3

.field static final TRANSACTION_notifySessionUpdated:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.IMediaRouter2Manager"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRouter2Manager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.media.IMediaRouter2Manager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaRouter2Manager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/IMediaRouter2Manager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRouter2Manager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x8
    const-string v0, "notifyRequestFailed"

    return-object v0

    :pswitch_8  #0x7
    const-string v0, "notifyRoutesChanged"

    return-object v0

    :pswitch_b  #0x6
    const-string v0, "notifyRoutesRemoved"

    return-object v0

    :pswitch_e  #0x5
    const-string v0, "notifyRoutesAdded"

    return-object v0

    :pswitch_11  #0x4
    const-string v0, "notifyDiscoveryPreferenceChanged"

    return-object v0

    :pswitch_14  #0x3
    const-string v0, "notifySessionReleased"

    return-object v0

    :pswitch_17  #0x2
    const-string v0, "notifySessionUpdated"

    return-object v0

    :pswitch_1a  #0x1
    const-string v0, "notifySessionCreated"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_8  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/media/IMediaRouter2Manager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.media.IMediaRouter2Manager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_98

    packed-switch p1, :pswitch_data_9e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRequestFailed(II)V

    goto :goto_96

    :pswitch_2b  #0x7
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRoutesChanged(Ljava/util/List;)V

    goto :goto_96

    :pswitch_38  #0x6
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRoutesRemoved(Ljava/util/List;)V

    goto :goto_96

    :pswitch_45  #0x5
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRoutesAdded(Ljava/util/List;)V

    goto :goto_96

    :pswitch_52  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/RouteDiscoveryPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2Manager$Stub;->notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    goto :goto_96

    :pswitch_65  #0x3
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2Manager$Stub;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    goto :goto_96

    :pswitch_74  #0x2
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2Manager$Stub;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V

    goto :goto_96

    :pswitch_83  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2Manager$Stub;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V

    nop

    :goto_96
    return v1

    nop

    :pswitch_data_98
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_83  #00000001
        :pswitch_74  #00000002
        :pswitch_65  #00000003
        :pswitch_52  #00000004
        :pswitch_45  #00000005
        :pswitch_38  #00000006
        :pswitch_2b  #00000007
        :pswitch_1c  #00000008
    .end packed-switch
.end method
