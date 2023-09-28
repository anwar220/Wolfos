# classes3.dex

.class public interface abstract Landroid/os/IBinder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IBinder$DeathRecipient;
    }
.end annotation


# static fields
.field public static final DUMP_TRANSACTION:I = 0x5f444d50

.field public static final FIRST_CALL_TRANSACTION:I = 0x1

.field public static final FLAG_CLEAR_BUF:I = 0x20

.field public static final FLAG_COLLECT_NOTED_APP_OPS:I = 0x2

.field public static final FLAG_ONEWAY:I = 0x1

.field public static final INTERFACE_TRANSACTION:I = 0x5f4e5446

.field public static final LAST_CALL_TRANSACTION:I = 0xffffff

.field public static final LIKE_TRANSACTION:I = 0x5f4c494b

.field public static final MAX_IPC_SIZE:I = 0x10000

.field public static final PING_TRANSACTION:I = 0x5f504e47

.field public static final SHELL_COMMAND_TRANSACTION:I = 0x5f434d44

.field public static final SYSPROPS_TRANSACTION:I = 0x5f535052

.field public static final TWEET_TRANSACTION:I = 0x5f545754


# direct methods
.method public static getSuggestedMaxIpcSizeBytes()I
    .registers 1

    const/high16 v0, 0x10000

    return v0
.end method


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public getExtension()Landroid/os/IBinder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getInterfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isBinderAlive()Z
.end method

.method public abstract linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pingBinder()Z
.end method

.method public abstract queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
.end method

.method public abstract shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
.end method
