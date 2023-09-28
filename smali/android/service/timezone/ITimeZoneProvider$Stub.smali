# classes3.dex

.class public abstract Landroid/service/timezone/ITimeZoneProvider$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/service/timezone/ITimeZoneProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/ITimeZoneProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/timezone/ITimeZoneProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_startUpdates:I = 0x1

.field static final TRANSACTION_stopUpdates:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.timezone.ITimeZoneProvider"

    invoke-virtual {p0, p0, v0}, Landroid/service/timezone/ITimeZoneProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/timezone/ITimeZoneProvider;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.timezone.ITimeZoneProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/timezone/ITimeZoneProvider;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/timezone/ITimeZoneProvider;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/timezone/ITimeZoneProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/timezone/ITimeZoneProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x2
    const-string/jumbo v0, "stopUpdates"

    return-object v0

    :pswitch_9  #0x1
    const-string/jumbo v0, "startUpdates"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9  #00000001
        :pswitch_5  #00000002
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/service/timezone/ITimeZoneProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    const-string v1, "android.service.timezone.ITimeZoneProvider"

    const/4 v2, 0x1

    if-lt v0, v2, :cond_12

    const v3, 0xffffff

    if-gt v0, v3, :cond_12

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    :cond_12
    move-object/from16 v3, p2

    :goto_14
    packed-switch v0, :pswitch_data_48

    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_4e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :pswitch_21  #0x5f4e5446
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_27  #0x2
    invoke-virtual/range {p0 .. p0}, Landroid/service/timezone/ITimeZoneProvider$Stub;->stopUpdates()V

    goto :goto_47

    :pswitch_2b  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/timezone/ITimeZoneProviderManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/timezone/ITimeZoneProviderManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v6, p0

    move-object v7, v5

    move-wide v8, v12

    move-wide v10, v14

    invoke-virtual/range {v6 .. v11}, Landroid/service/timezone/ITimeZoneProvider$Stub;->startUpdates(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    nop

    :goto_47
    return v2

    :pswitch_data_48
    .packed-switch 0x5f4e5446
        :pswitch_21  #5f4e5446
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2b  #00000001
        :pswitch_27  #00000002
    .end packed-switch
.end method
