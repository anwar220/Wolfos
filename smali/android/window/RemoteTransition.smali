# classes4.dex

.class public Landroid/window/RemoteTransition;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/RemoteTransition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppThread:Landroid/app/IApplicationThread;

.field private mRemoteTransition:Landroid/window/IRemoteTransition;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/window/RemoteTransition$1;

    invoke-direct {v0}, Landroid/window/RemoteTransition$1;-><init>()V

    sput-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/IRemoteTransition$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IRemoteTransition;

    move-result-object v1

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    move-object v2, v3

    goto :goto_1e

    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    :goto_1e
    iput-object v1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    const-class v4, Landroid/annotation/NonNull;

    invoke-static {v4, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    return-void
.end method

.method public constructor <init>(Landroid/window/IRemoteTransition;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V

    return-void
.end method

.method public constructor <init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-interface {v0}, Landroid/window/IRemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAppThread()Landroid/app/IApplicationThread;
    .registers 2

    iget-object v0, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public getRemoteTransition()Landroid/window/IRemoteTransition;
    .registers 2

    iget-object v0, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    return-object v0
.end method

.method public setAppThread(Landroid/app/IApplicationThread;)Landroid/window/RemoteTransition;
    .registers 2

    iput-object p1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public setRemoteTransition(Landroid/window/IRemoteTransition;)Landroid/window/RemoteTransition;
    .registers 4

    iput-object p1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteTransition { remoteTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appThread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/window/RemoteTransition;->mRemoteTransition:Landroid/window/IRemoteTransition;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object v1, p0, Landroid/window/RemoteTransition;->mAppThread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_17

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    :cond_17
    return-void
.end method
