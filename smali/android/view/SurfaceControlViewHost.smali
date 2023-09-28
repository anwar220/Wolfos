# classes3.dex

.class public Landroid/view/SurfaceControlViewHost;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControlViewHost$SurfacePackage;,
        Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceControlViewHost"


# instance fields
.field private mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private mReleased:Z

.field private mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mViewRoot:Landroid/view/ViewRootImpl;

.field private mWm:Landroid/view/WindowlessWindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmViewRoot(Landroid/view/SurfaceControlViewHost;)Landroid/view/ViewRootImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWm(Landroid/view/SurfaceControlViewHost;)Landroid/view/WindowlessWindowManager;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    new-instance v0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl-IA;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "SurfaceControlViewHost"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/view/WindowlessWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1, v2, p3}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    new-instance v0, Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-direct {v0, p1, p2, v1}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->addConfigCallback(Landroid/content/Context;Landroid/view/Display;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowManagerGlobal;->addWindowlessRoot(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    new-instance v0, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControlViewHost$ISurfaceControlViewHostImpl-IA;)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    iput-object p3, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    new-instance v0, Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-direct {v0, p1, p2, v1, p4}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Z)V

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->addConfigCallback(Landroid/content/Context;Landroid/view/Display;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowManagerGlobal;->addWindowlessRoot(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-void
.end method

.method private addConfigCallback(Landroid/content/Context;Landroid/view/Display;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p2}, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder;Landroid/view/Display;)V

    invoke-static {v1}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    return-void
.end method

.method static synthetic lambda$addConfigCallback$0(Landroid/os/IBinder;Landroid/view/Display;Landroid/content/res/Configuration;)V
    .registers 6

    instance-of v0, p0, Landroid/window/WindowTokenClient;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Landroid/window/WindowTokenClient;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Landroid/window/WindowTokenClient;->onConfigurationChanged(Landroid/content/res/Configuration;IZ)V

    :cond_f
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceControlViewHost finalized without being released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceControlViewHost"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->die(Z)Z

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->removeWindowlessRoot(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method public getFocusGrantToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-virtual {v0}, Landroid/view/WindowlessWindowManager;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 6

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    if-eqz v0, :cond_21

    new-instance v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    new-instance v1, Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v3, "getSurfacePackage"

    invoke-direct {v1, v2, v3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mAccessibilityEmbeddedConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    iget-object v3, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    invoke-virtual {v3}, Landroid/view/WindowlessWindowManager;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/SurfaceControlViewHost;->mRemoteInterface:Landroid/view/ISurfaceControlViewHost;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControlViewHost$SurfacePackage;-><init>(Landroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;Landroid/view/ISurfaceControlViewHost;)V

    return-object v0

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWindowToken()Landroid/view/IWindow;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    return-object v0
.end method

.method public getWindowlessWM()Landroid/view/WindowlessWindowManager;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    return-object v0
.end method

.method public relayout(II)V
    .registers 10

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x2

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public relayout(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    new-instance v0, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V

    return-void
.end method

.method public relayout(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setReportNextDraw(Z)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mWm:Landroid/view/WindowlessWindowManager;

    iget-object v1, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/WindowlessWindowManager;->setCompletionCallback(Landroid/os/IBinder;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V

    return-void
.end method

.method public release()V
    .registers 4

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->die(Z)Z

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v2}, Landroid/view/WindowManagerGlobal;->removeWindowlessRoot(Landroid/view/ViewRootImpl;)V

    iput-boolean v1, p0, Landroid/view/SurfaceControlViewHost;->mReleased:Z

    return-void
.end method

.method public setView(Landroid/view/View;II)V
    .registers 11

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x2

    move-object v0, v6

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/view/SurfaceControlViewHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    return-void
.end method
