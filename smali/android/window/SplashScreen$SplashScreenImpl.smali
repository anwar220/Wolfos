# classes4.dex

.class public Landroid/window/SplashScreen$SplashScreenImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/SplashScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashScreenImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplashScreenImpl"


# instance fields
.field private final mActivityToken:Landroid/os/IBinder;

.field private mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

.field private final mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityToken(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExitAnimationListener(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/window/SplashScreen$OnExitAnimationListener;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->getInstance()Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    return-void
.end method


# virtual methods
.method public clearOnExitAnimationListener()V
    .registers 3

    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$fgetmGlobalLock(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v1, p0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$mremoveImpl(Landroid/window/SplashScreen$SplashScreenManagerGlobal;Landroid/window/SplashScreen$SplashScreenImpl;)V

    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw v1
.end method

.method public setOnExitAnimationListener(Landroid/window/SplashScreen$OnExitAnimationListener;)V
    .registers 4

    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$fgetmGlobalLock(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_15

    :try_start_e
    iput-object p1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v1, p0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$maddImpl(Landroid/window/SplashScreen$SplashScreenManagerGlobal;Landroid/window/SplashScreen$SplashScreenImpl;)V

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw v1
.end method

.method public setSplashScreenTheme(I)V
    .registers 8

    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    const-string v1, "SplashScreenImpl"

    if-nez v0, :cond_c

    const-string v0, "Couldn\'t persist the starting theme. This instance is not an Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_19

    return-void

    :cond_19
    if-eqz p1, :cond_24

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    :try_start_25
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getUserId()I

    move-result v5

    invoke-interface {v3, v4, v2, v5}, Landroid/content/pm/IPackageManager;->setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_38} :catch_39

    goto :goto_3f

    :catch_39
    move-exception v3

    const-string v4, "Couldn\'t persist the starting theme"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    return-void
.end method
