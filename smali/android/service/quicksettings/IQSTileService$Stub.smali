# classes3.dex

.class public abstract Landroid/service/quicksettings/IQSTileService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/service/quicksettings/IQSTileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/IQSTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/IQSTileService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.quicksettings.IQSTileService"

.field static final TRANSACTION_onClick:I = 0x5

.field static final TRANSACTION_onStartListening:I = 0x3

.field static final TRANSACTION_onStopListening:I = 0x4

.field static final TRANSACTION_onTileAdded:I = 0x1

.field static final TRANSACTION_onTileRemoved:I = 0x2

.field static final TRANSACTION_onUnlockComplete:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p0, p0, v0}, Landroid/service/quicksettings/IQSTileService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSTileService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.quicksettings.IQSTileService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/quicksettings/IQSTileService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/quicksettings/IQSTileService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/quicksettings/IQSTileService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/quicksettings/IQSTileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x6
    const-string/jumbo v0, "onUnlockComplete"

    return-object v0

    :pswitch_9  #0x5
    const-string/jumbo v0, "onClick"

    return-object v0

    :pswitch_d  #0x4
    const-string/jumbo v0, "onStopListening"

    return-object v0

    :pswitch_11  #0x3
    const-string/jumbo v0, "onStartListening"

    return-object v0

    :pswitch_15  #0x2
    const-string/jumbo v0, "onTileRemoved"

    return-object v0

    :pswitch_19  #0x1
    const-string/jumbo v0, "onTileAdded"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19  #00000001
        :pswitch_15  #00000002
        :pswitch_11  #00000003
        :pswitch_d  #00000004
        :pswitch_9  #00000005
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

    invoke-static {p1}, Landroid/service/quicksettings/IQSTileService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.service.quicksettings.IQSTileService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_3c

    packed-switch p1, :pswitch_data_42

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x6
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onUnlockComplete()V

    goto :goto_3b

    :pswitch_20  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSTileService$Stub;->onClick(Landroid/os/IBinder;)V

    goto :goto_3b

    :pswitch_2b  #0x4
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onStopListening()V

    goto :goto_3b

    :pswitch_2f  #0x3
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onStartListening()V

    goto :goto_3b

    :pswitch_33  #0x2
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onTileRemoved()V

    goto :goto_3b

    :pswitch_37  #0x1
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onTileAdded()V

    nop

    :goto_3b
    return v1

    :pswitch_data_3c
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_37  #00000001
        :pswitch_33  #00000002
        :pswitch_2f  #00000003
        :pswitch_2b  #00000004
        :pswitch_20  #00000005
        :pswitch_1c  #00000006
    .end packed-switch
.end method
