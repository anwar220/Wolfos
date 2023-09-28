# classes3.dex

.class public abstract Landroid/os/ISystemConfig$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/ISystemConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISystemConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getDisabledUntilUsedPreinstalledCarrierApps:I = 0x1

.field static final TRANSACTION_getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries:I = 0x3

.field static final TRANSACTION_getDisabledUntilUsedPreinstalledCarrierAssociatedApps:I = 0x2

.field static final TRANSACTION_getEnabledComponentOverrides:I = 0x5

.field static final TRANSACTION_getSystemPermissionUids:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.ISystemConfig"

    invoke-virtual {p0, p0, v0}, Landroid/os/ISystemConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ISystemConfig;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.os.ISystemConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/ISystemConfig;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/os/ISystemConfig;

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/ISystemConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ISystemConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x5
    const-string v0, "getEnabledComponentOverrides"

    return-object v0

    :pswitch_8  #0x4
    const-string v0, "getSystemPermissionUids"

    return-object v0

    :pswitch_b  #0x3
    const-string v0, "getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries"

    return-object v0

    :pswitch_e  #0x2
    const-string v0, "getDisabledUntilUsedPreinstalledCarrierAssociatedApps"

    return-object v0

    :pswitch_11  #0x1
    const-string v0, "getDisabledUntilUsedPreinstalledCarrierApps"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11  #00000001
        :pswitch_e  #00000002
        :pswitch_b  #00000003
        :pswitch_8  #00000004
        :pswitch_5  #00000005
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/os/ISystemConfig$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.os.ISystemConfig"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_62

    packed-switch p1, :pswitch_data_68

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/ISystemConfig$Stub;->getEnabledComponentOverrides(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_61

    :pswitch_2e  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/ISystemConfig$Stub;->getSystemPermissionUids(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_61

    :pswitch_40  #0x3
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_61

    :pswitch_4b  #0x2
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_61

    :pswitch_56  #0x1
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    nop

    :goto_61
    return v1

    :pswitch_data_62
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_56  #00000001
        :pswitch_4b  #00000002
        :pswitch_40  #00000003
        :pswitch_2e  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method
