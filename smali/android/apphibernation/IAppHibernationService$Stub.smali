# classes.dex

.class public abstract Landroid/apphibernation/IAppHibernationService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/apphibernation/IAppHibernationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apphibernation/IAppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/apphibernation/IAppHibernationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getHibernatingPackagesForUser:I = 0x5

.field static final TRANSACTION_getHibernationStatsForUser:I = 0x6

.field static final TRANSACTION_isHibernatingForUser:I = 0x1

.field static final TRANSACTION_isHibernatingGlobally:I = 0x3

.field static final TRANSACTION_setHibernatingForUser:I = 0x2

.field static final TRANSACTION_setHibernatingGlobally:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.apphibernation.IAppHibernationService"

    invoke-virtual {p0, p0, v0}, Landroid/apphibernation/IAppHibernationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/apphibernation/IAppHibernationService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.apphibernation.IAppHibernationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/apphibernation/IAppHibernationService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/apphibernation/IAppHibernationService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x6
    const-string v0, "getHibernationStatsForUser"

    return-object v0

    :pswitch_8  #0x5
    const-string v0, "getHibernatingPackagesForUser"

    return-object v0

    :pswitch_b  #0x4
    const-string/jumbo v0, "setHibernatingGlobally"

    return-object v0

    :pswitch_f  #0x3
    const-string v0, "isHibernatingGlobally"

    return-object v0

    :pswitch_12  #0x2
    const-string/jumbo v0, "setHibernatingForUser"

    return-object v0

    :pswitch_16  #0x1
    const-string v0, "isHibernatingForUser"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16  #00000001
        :pswitch_12  #00000002
        :pswitch_f  #00000003
        :pswitch_b  #00000004
        :pswitch_8  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method

.method static synthetic lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Landroid/apphibernation/HibernationStats;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
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

    invoke-static {p1}, Landroid/apphibernation/IAppHibernationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.apphibernation.IAppHibernationService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_a8

    packed-switch p1, :pswitch_data_ae

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/apphibernation/IAppHibernationService$Stub;->getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v4, :cond_35

    const/4 v5, -0x1

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a7

    :cond_35
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v5, Landroid/apphibernation/IAppHibernationService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v5, p3}, Landroid/apphibernation/IAppHibernationService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_a7

    :pswitch_45  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/apphibernation/IAppHibernationService$Stub;->getHibernatingPackagesForUser(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_a7

    :pswitch_57  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/apphibernation/IAppHibernationService$Stub;->setHibernatingGlobally(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a7

    :pswitch_69  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/apphibernation/IAppHibernationService$Stub;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_a7

    :pswitch_7b  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/apphibernation/IAppHibernationService$Stub;->setHibernatingForUser(Ljava/lang/String;IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a7

    :pswitch_91  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/apphibernation/IAppHibernationService$Stub;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_a7
    return v1

    :pswitch_data_a8
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_91  #00000001
        :pswitch_7b  #00000002
        :pswitch_69  #00000003
        :pswitch_57  #00000004
        :pswitch_45  #00000005
        :pswitch_1c  #00000006
    .end packed-switch
.end method
