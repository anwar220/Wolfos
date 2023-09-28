# classes3.dex

.class Landroid/view/RemoteAccessibilityController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteAccessibilityController"


# instance fields
.field private mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

.field private mHostId:I

.field private mHostView:Landroid/view/View;

.field private final mMatrixValues:[F

.field private mWindowMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnectionWrapper(Landroid/view/RemoteAccessibilityController;)Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
    .registers 1

    iget-object p0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnectionWrapper(Landroid/view/RemoteAccessibilityController;Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)V
    .registers 2

    iput-object p1, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunOnUiThread(Landroid/view/RemoteAccessibilityController;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/RemoteAccessibilityController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController;->mWindowMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController;->mMatrixValues:[F

    iput-object p1, p0, Landroid/view/RemoteAccessibilityController;->mHostView:Landroid/view/View;

    return-void
.end method

.method private getRemoteAccessibilityEmbeddedConnection()Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
    .registers 2

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_16

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_19

    :cond_16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_19
    return-void
.end method

.method private setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->disassociateEmbeddedHierarchy()V

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->unlinkToDeath()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    :cond_13
    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    new-instance v0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;-><init>(Landroid/view/RemoteAccessibilityController;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->linkToDeath()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    :cond_21
    goto :goto_3b

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while setRemoteEmbeddedConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAccessibilityController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return-void
.end method


# virtual methods
.method alreadyAssociated(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;)Z
    .registers 3

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-static {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->-$$Nest$fgetmConnection(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method assosciateHierarchy(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;I)V
    .registers 7

    iput p3, p0, Landroid/view/RemoteAccessibilityController;->mHostId:I

    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->associateEmbeddedHierarchy(Landroid/os/IBinder;I)Landroid/os/IBinder;

    move-result-object v0

    move-object p2, v0

    invoke-direct {p0, p1, p2}, Landroid/view/RemoteAccessibilityController;->setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_24

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in associateEmbeddedHierarchy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAccessibilityController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method connected()Z
    .registers 2

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method disassosciateHierarchy()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/RemoteAccessibilityController;->setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V

    return-void
.end method

.method getLeashToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->getLeashToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method setWindowMatrix(Landroid/graphics/Matrix;Z)V
    .registers 6

    if-nez p2, :cond_b

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mWindowMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    nop

    :try_start_c
    invoke-direct {p0}, Landroid/view/RemoteAccessibilityController;->getRemoteAccessibilityEmbeddedConnection()Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v1, p0, Landroid/view/RemoteAccessibilityController;->mMatrixValues:[F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v1

    iget-object v2, p0, Landroid/view/RemoteAccessibilityController;->mMatrixValues:[F

    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->setWindowMatrix([F)V

    iget-object v1, p0, Landroid/view/RemoteAccessibilityController;->mWindowMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_26} :catch_27

    goto :goto_40

    :catch_27
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while setScreenMatrix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAccessibilityController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void
.end method
