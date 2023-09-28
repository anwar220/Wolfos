# classes4.dex

.class public abstract Landroid/window/WindowProviderService;
.super Landroid/app/Service;

# interfaces
.implements Landroid/window/WindowProvider;


# instance fields
.field private final mController:Landroid/window/WindowContextController;

.field private mInitialized:Z

.field private final mOptions:Landroid/os/Bundle;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/window/WindowTokenClient;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/window/WindowTokenClient;

    invoke-direct {v0}, Landroid/window/WindowTokenClient;-><init>()V

    iput-object v0, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    new-instance v1, Landroid/window/WindowContextController;

    invoke-direct {v1, v0}, Landroid/window/WindowContextController;-><init>(Landroid/window/WindowTokenClient;)V

    iput-object v1, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/window/WindowProviderService;->mOptions:Landroid/os/Bundle;

    const-string v1, "android.windowContext.isWindowProviderService"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static isWindowProviderService(Landroid/os/Bundle;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "android.windowContext.isWindowProviderService"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    iget-boolean v0, p0, Landroid/window/WindowProviderService;->mInitialized:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, p0}, Landroid/window/WindowTokenClient;->attachContext(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getWindowType()I

    move-result v1

    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getDisplayId()I

    move-result v2

    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getWindowContextOptions()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/window/WindowContextController;->attachToDisplayArea(IILandroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/WindowManagerImpl;->createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowProviderService;->mWindowManager:Landroid/view/WindowManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/WindowProviderService;->mInitialized:Z

    :cond_26
    return-void
.end method

.method public final attachToWindowToken(Landroid/os/IBinder;)V
    .registers 3

    iget-object v0, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    invoke-virtual {v0, p1}, Landroid/window/WindowContextController;->attachToWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public final createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/app/Service;->createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/window/WindowProviderService;->getInitialDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowProviderService;->mWindowToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    return-object v2
.end method

.method public getInitialDisplayId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/window/WindowProviderService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    :cond_c
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWindowContextOptions()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowProviderService;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getWindowType()I
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroid/window/WindowProviderService;->mController:Landroid/window/WindowContextController;

    invoke-virtual {v0}, Landroid/window/WindowContextController;->detachIfNeeded()V

    return-void
.end method
