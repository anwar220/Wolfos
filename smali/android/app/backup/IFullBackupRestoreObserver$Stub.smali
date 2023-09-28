# classes.dex

.class public abstract Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/backup/IFullBackupRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IFullBackupRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IFullBackupRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IFullBackupRestoreObserver"

.field static final TRANSACTION_onBackupPackage:I = 0x2

.field static final TRANSACTION_onEndBackup:I = 0x3

.field static final TRANSACTION_onEndRestore:I = 0x6

.field static final TRANSACTION_onRestorePackage:I = 0x5

.field static final TRANSACTION_onStartBackup:I = 0x1

.field static final TRANSACTION_onStartRestore:I = 0x4

.field static final TRANSACTION_onTimeout:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.backup.IFullBackupRestoreObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.backup.IFullBackupRestoreObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/backup/IFullBackupRestoreObserver;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/backup/IFullBackupRestoreObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_22

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x7
    const-string/jumbo v0, "onTimeout"

    return-object v0

    :pswitch_9  #0x6
    const-string/jumbo v0, "onEndRestore"

    return-object v0

    :pswitch_d  #0x5
    const-string/jumbo v0, "onRestorePackage"

    return-object v0

    :pswitch_11  #0x4
    const-string/jumbo v0, "onStartRestore"

    return-object v0

    :pswitch_15  #0x3
    const-string/jumbo v0, "onEndBackup"

    return-object v0

    :pswitch_19  #0x2
    const-string/jumbo v0, "onBackupPackage"

    return-object v0

    :pswitch_1d  #0x1
    const-string/jumbo v0, "onStartBackup"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_19  #00000002
        :pswitch_15  #00000003
        :pswitch_11  #00000004
        :pswitch_d  #00000005
        :pswitch_9  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.app.backup.IFullBackupRestoreObserver"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_48

    packed-switch p1, :pswitch_data_4e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x7
    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onTimeout()V

    goto :goto_46

    :pswitch_20  #0x6
    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onEndRestore()V

    goto :goto_46

    :pswitch_24  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onRestorePackage(Ljava/lang/String;)V

    goto :goto_46

    :pswitch_2f  #0x4
    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onStartRestore()V

    goto :goto_46

    :pswitch_33  #0x3
    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onEndBackup()V

    goto :goto_46

    :pswitch_37  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onBackupPackage(Ljava/lang/String;)V

    goto :goto_46

    :pswitch_42  #0x1
    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onStartBackup()V

    nop

    :goto_46
    return v1

    nop

    :pswitch_data_48
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_37  #00000002
        :pswitch_33  #00000003
        :pswitch_2f  #00000004
        :pswitch_24  #00000005
        :pswitch_20  #00000006
        :pswitch_1c  #00000007
    .end packed-switch
.end method