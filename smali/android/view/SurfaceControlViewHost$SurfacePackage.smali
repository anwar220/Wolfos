# classes3.dex

.class public final Landroid/view/SurfaceControlViewHost$SurfacePackage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControlViewHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SurfacePackage"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private final mInputToken:Landroid/os/IBinder;

.field private final mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/SurfaceControlViewHost$SurfacePackage$1;

    invoke-direct {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputToken:Landroid/os/IBinder;

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ISurfaceControlViewHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/SurfaceControlViewHost$SurfacePackage-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;Landroid/view/ISurfaceControlViewHost;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object p2, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    iput-object p3, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputToken:Landroid/os/IBinder;

    iput-object p4, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v1, Landroid/view/SurfaceControl;

    invoke-direct {v1}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v2, "SurfacePackage"

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_19
    iget-object v1, p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    iget-object v1, p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputToken:Landroid/os/IBinder;

    iget-object v1, p1, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    iput-object v1, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method public getInputToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getRemoteInterface()Landroid/view/ISurfaceControlViewHost;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public notifyConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ISurfaceControlViewHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_c
    return-void
.end method

.method public notifyDetachedFromWindow()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ISurfaceControlViewHost;->onDispatchDetachedFromWindow()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_c
    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mInputToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    invoke-interface {v0}, Landroid/view/ISurfaceControlViewHost;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
