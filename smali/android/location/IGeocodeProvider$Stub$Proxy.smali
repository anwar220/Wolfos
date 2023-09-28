# classes2.dex

.class Landroid/location/IGeocodeProvider$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/IGeocodeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeocodeProvider$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.location.IGeocodeProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object v1, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_25

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    const-string v0, "android.location.IGeocodeProvider"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v3, p2

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_5b

    move-wide/from16 v5, p4

    :try_start_15
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_57

    move-wide/from16 v7, p6

    :try_start_1a
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_53

    move-wide/from16 v9, p8

    :try_start_1f
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_4f

    move/from16 v11, p10

    :try_start_24
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_4b

    const/4 v0, 0x0

    move-object/from16 v12, p11

    :try_start_2a
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_47

    move-object/from16 v13, p12

    :try_start_2f
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_43

    move-object/from16 v14, p0

    :try_start_34
    iget-object v0, v14, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_41

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_41
    move-exception v0

    goto :goto_6a

    :catchall_43
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6a

    :catchall_47
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_68

    :catchall_4b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_66

    :catchall_4f
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_64

    :catchall_53
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_62

    :catchall_57
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_60

    :catchall_5b
    move-exception v0

    move-object/from16 v14, p0

    move-wide/from16 v5, p4

    :goto_60
    move-wide/from16 v7, p6

    :goto_62
    move-wide/from16 v9, p8

    :goto_64
    move/from16 v11, p10

    :goto_66
    move-object/from16 v12, p11

    :goto_68
    move-object/from16 v13, p12

    :goto_6a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.location.IGeocodeProvider"

    return-object v0
.end method
