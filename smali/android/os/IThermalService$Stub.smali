# classes3.dex

.class public abstract Landroid/os/IThermalService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/IThermalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IThermalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IThermalService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IThermalService"

.field static final TRANSACTION_getCurrentCoolingDevices:I = 0x9

.field static final TRANSACTION_getCurrentCoolingDevicesWithType:I = 0xa

.field static final TRANSACTION_getCurrentTemperatures:I = 0x4

.field static final TRANSACTION_getCurrentTemperaturesWithType:I = 0x5

.field static final TRANSACTION_getCurrentThermalStatus:I = 0x8

.field static final TRANSACTION_getThermalHeadroom:I = 0xb

.field static final TRANSACTION_registerThermalEventListener:I = 0x1

.field static final TRANSACTION_registerThermalEventListenerWithType:I = 0x2

.field static final TRANSACTION_registerThermalStatusListener:I = 0x6

.field static final TRANSACTION_unregisterThermalEventListener:I = 0x3

.field static final TRANSACTION_unregisterThermalStatusListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IThermalService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IThermalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.os.IThermalService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IThermalService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/os/IThermalService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/IThermalService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IThermalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xb
    const-string v0, "getThermalHeadroom"

    return-object v0

    :pswitch_8  #0xa
    const-string v0, "getCurrentCoolingDevicesWithType"

    return-object v0

    :pswitch_b  #0x9
    const-string v0, "getCurrentCoolingDevices"

    return-object v0

    :pswitch_e  #0x8
    const-string v0, "getCurrentThermalStatus"

    return-object v0

    :pswitch_11  #0x7
    const-string/jumbo v0, "unregisterThermalStatusListener"

    return-object v0

    :pswitch_15  #0x6
    const-string/jumbo v0, "registerThermalStatusListener"

    return-object v0

    :pswitch_19  #0x5
    const-string v0, "getCurrentTemperaturesWithType"

    return-object v0

    :pswitch_1c  #0x4
    const-string v0, "getCurrentTemperatures"

    return-object v0

    :pswitch_1f  #0x3
    const-string/jumbo v0, "unregisterThermalEventListener"

    return-object v0

    :pswitch_23  #0x2
    const-string/jumbo v0, "registerThermalEventListenerWithType"

    return-object v0

    :pswitch_27  #0x1
    const-string/jumbo v0, "registerThermalEventListener"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27  #00000001
        :pswitch_23  #00000002
        :pswitch_1f  #00000003
        :pswitch_1c  #00000004
        :pswitch_19  #00000005
        :pswitch_15  #00000006
        :pswitch_11  #00000007
        :pswitch_e  #00000008
        :pswitch_b  #00000009
        :pswitch_8  #0000000a
        :pswitch_5  #0000000b
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/os/IThermalService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.os.IThermalService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_ec

    packed-switch p1, :pswitch_data_f2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->getThermalHeadroom(I)F

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_ea

    :pswitch_2f  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->getCurrentCoolingDevicesWithType(I)[Landroid/os/CoolingDevice;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_ea

    :pswitch_42  #0x9
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getCurrentCoolingDevices()[Landroid/os/CoolingDevice;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_ea

    :pswitch_4e  #0x8
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getCurrentThermalStatus()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_ea

    :pswitch_5a  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalStatusListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_ea

    :pswitch_71  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalStatusListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_ea

    :pswitch_87  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_ea

    :pswitch_99  #0x4
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getCurrentTemperatures()[Landroid/os/Temperature;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_ea

    :pswitch_a4  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_ea

    :pswitch_ba  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/IThermalService$Stub;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_ea

    :pswitch_d4  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IThermalService$Stub;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_ea
    return v1

    nop

    :pswitch_data_ec
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_d4  #00000001
        :pswitch_ba  #00000002
        :pswitch_a4  #00000003
        :pswitch_99  #00000004
        :pswitch_87  #00000005
        :pswitch_71  #00000006
        :pswitch_5a  #00000007
        :pswitch_4e  #00000008
        :pswitch_42  #00000009
        :pswitch_2f  #0000000a
        :pswitch_1c  #0000000b
    .end packed-switch
.end method
