# classes.dex

.class public abstract Landroid/app/IUiModeManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/IUiModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiModeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IUiModeManager"

.field static final TRANSACTION_addOnProjectionStateChangedListener:I = 0x14

.field static final TRANSACTION_disableCarMode:I = 0x2

.field static final TRANSACTION_disableCarModeByCallingPackage:I = 0x3

.field static final TRANSACTION_enableCarMode:I = 0x1

.field static final TRANSACTION_getActiveProjectionTypes:I = 0x17

.field static final TRANSACTION_getCurrentModeType:I = 0x4

.field static final TRANSACTION_getCustomNightModeEnd:I = 0x10

.field static final TRANSACTION_getCustomNightModeStart:I = 0xe

.field static final TRANSACTION_getNightMode:I = 0x6

.field static final TRANSACTION_getNightModeCustomType:I = 0x8

.field static final TRANSACTION_getProjectingPackages:I = 0x16

.field static final TRANSACTION_isNightModeLocked:I = 0xb

.field static final TRANSACTION_isUiModeLocked:I = 0xa

.field static final TRANSACTION_releaseProjection:I = 0x13

.field static final TRANSACTION_removeOnProjectionStateChangedListener:I = 0x15

.field static final TRANSACTION_requestProjection:I = 0x12

.field static final TRANSACTION_setApplicationNightMode:I = 0x9

.field static final TRANSACTION_setCustomNightModeEnd:I = 0x11

.field static final TRANSACTION_setCustomNightModeStart:I = 0xf

.field static final TRANSACTION_setNightMode:I = 0x5

.field static final TRANSACTION_setNightModeActivated:I = 0xd

.field static final TRANSACTION_setNightModeActivatedForCustomMode:I = 0xc

.field static final TRANSACTION_setNightModeCustomType:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IUiModeManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUiModeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.IUiModeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IUiModeManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/IUiModeManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/IUiModeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUiModeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_54

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x17
    const-string v0, "getActiveProjectionTypes"

    return-object v0

    :pswitch_8  #0x16
    const-string v0, "getProjectingPackages"

    return-object v0

    :pswitch_b  #0x15
    const-string/jumbo v0, "removeOnProjectionStateChangedListener"

    return-object v0

    :pswitch_f  #0x14
    const-string v0, "addOnProjectionStateChangedListener"

    return-object v0

    :pswitch_12  #0x13
    const-string/jumbo v0, "releaseProjection"

    return-object v0

    :pswitch_16  #0x12
    const-string/jumbo v0, "requestProjection"

    return-object v0

    :pswitch_1a  #0x11
    const-string/jumbo v0, "setCustomNightModeEnd"

    return-object v0

    :pswitch_1e  #0x10
    const-string v0, "getCustomNightModeEnd"

    return-object v0

    :pswitch_21  #0xf
    const-string/jumbo v0, "setCustomNightModeStart"

    return-object v0

    :pswitch_25  #0xe
    const-string v0, "getCustomNightModeStart"

    return-object v0

    :pswitch_28  #0xd
    const-string/jumbo v0, "setNightModeActivated"

    return-object v0

    :pswitch_2c  #0xc
    const-string/jumbo v0, "setNightModeActivatedForCustomMode"

    return-object v0

    :pswitch_30  #0xb
    const-string v0, "isNightModeLocked"

    return-object v0

    :pswitch_33  #0xa
    const-string v0, "isUiModeLocked"

    return-object v0

    :pswitch_36  #0x9
    const-string/jumbo v0, "setApplicationNightMode"

    return-object v0

    :pswitch_3a  #0x8
    const-string v0, "getNightModeCustomType"

    return-object v0

    :pswitch_3d  #0x7
    const-string/jumbo v0, "setNightModeCustomType"

    return-object v0

    :pswitch_41  #0x6
    const-string v0, "getNightMode"

    return-object v0

    :pswitch_44  #0x5
    const-string/jumbo v0, "setNightMode"

    return-object v0

    :pswitch_48  #0x4
    const-string v0, "getCurrentModeType"

    return-object v0

    :pswitch_4b  #0x3
    const-string v0, "disableCarModeByCallingPackage"

    return-object v0

    :pswitch_4e  #0x2
    const-string v0, "disableCarMode"

    return-object v0

    :pswitch_51  #0x1
    const-string v0, "enableCarMode"

    return-object v0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_51  #00000001
        :pswitch_4e  #00000002
        :pswitch_4b  #00000003
        :pswitch_48  #00000004
        :pswitch_44  #00000005
        :pswitch_41  #00000006
        :pswitch_3d  #00000007
        :pswitch_3a  #00000008
        :pswitch_36  #00000009
        :pswitch_33  #0000000a
        :pswitch_30  #0000000b
        :pswitch_2c  #0000000c
        :pswitch_28  #0000000d
        :pswitch_25  #0000000e
        :pswitch_21  #0000000f
        :pswitch_1e  #00000010
        :pswitch_1a  #00000011
        :pswitch_16  #00000012
        :pswitch_12  #00000013
        :pswitch_f  #00000014
        :pswitch_b  #00000015
        :pswitch_8  #00000016
        :pswitch_5  #00000017
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x16

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.app.IUiModeManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_192

    packed-switch p1, :pswitch_data_198

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x17
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getActiveProjectionTypes()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_191

    :pswitch_28  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->getProjectingPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_191

    :pswitch_3b  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_191

    :pswitch_4e  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IOnProjectionStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOnProjectionStateChangedListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_191

    :pswitch_65  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->releaseProjection(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_191

    :pswitch_7c  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_191

    :pswitch_97  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeEnd(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_191

    :pswitch_a6  #0x10
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeEnd()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_191

    :pswitch_b2  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setCustomNightModeStart(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_191

    :pswitch_c1  #0xe
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCustomNightModeStart()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_191

    :pswitch_cd  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeActivated(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_191

    :pswitch_e0  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->setNightModeActivatedForCustomMode(IZ)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_191

    :pswitch_f7  #0xb
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isNightModeLocked()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_191

    :pswitch_103  #0xa
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isUiModeLocked()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_191

    :pswitch_10f  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setApplicationNightMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_191

    :pswitch_11e  #0x8
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightModeCustomType()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_191

    :pswitch_129  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightModeCustomType(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_191

    :pswitch_137  #0x6
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_191

    :pswitch_142  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->setNightMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_191

    :pswitch_150  #0x4
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCurrentModeType()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_191

    :pswitch_15b  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/app/IUiModeManager$Stub;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_191

    :pswitch_16d  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/IUiModeManager$Stub;->disableCarMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_191

    :pswitch_17b  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IUiModeManager$Stub;->enableCarMode(IILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_191
    return v1

    :pswitch_data_192
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_17b  #00000001
        :pswitch_16d  #00000002
        :pswitch_15b  #00000003
        :pswitch_150  #00000004
        :pswitch_142  #00000005
        :pswitch_137  #00000006
        :pswitch_129  #00000007
        :pswitch_11e  #00000008
        :pswitch_10f  #00000009
        :pswitch_103  #0000000a
        :pswitch_f7  #0000000b
        :pswitch_e0  #0000000c
        :pswitch_cd  #0000000d
        :pswitch_c1  #0000000e
        :pswitch_b2  #0000000f
        :pswitch_a6  #00000010
        :pswitch_97  #00000011
        :pswitch_7c  #00000012
        :pswitch_65  #00000013
        :pswitch_4e  #00000014
        :pswitch_3b  #00000015
        :pswitch_28  #00000016
        :pswitch_1c  #00000017
    .end packed-switch
.end method
