# classes.dex

.class Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;
.super Landroid/content/ContextWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityContext"
.end annotation


# instance fields
.field private final mConnectionId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput p2, p0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->mConnectionId:I

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->getDisplayId()I

    move-result v0

    invoke-direct {p0, p0, v0}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->setDefaultTokenInternal(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityService$AccessibilityContext-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private setDefaultTokenInternal(Landroid/content/Context;I)V
    .registers 9

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->mConnectionId:I

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    :try_start_12
    invoke-interface {v1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getOverlayWindowToken(I)Landroid/os/IBinder;

    move-result-object v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_18

    move-object v2, v3

    goto :goto_23

    :catch_18
    move-exception v3

    const-string v4, "AccessibilityService"

    const-string v5, "Failed to get window token"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_23
    invoke-virtual {v0, v2}, Landroid/view/WindowManagerImpl;->setDefaultToken(Landroid/os/IBinder;)V

    :cond_26
    return-void
.end method


# virtual methods
.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .registers 5

    new-instance v0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->mConnectionId:I

    invoke-direct {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7f0

    if-eq p1, v1, :cond_9

    return-object v0

    :cond_9
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->mConnectionId:I

    invoke-direct {v1, v0, v2}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method public createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContextWrapper;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7f0

    if-eq p2, v1, :cond_9

    return-object v0

    :cond_9
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;->mConnectionId:I

    invoke-direct {v1, v0, v2}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method
