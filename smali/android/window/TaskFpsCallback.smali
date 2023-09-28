# classes4.dex

.class public abstract Landroid/window/TaskFpsCallback;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dispatchOnFpsReported(Landroid/window/ITaskFpsCallback;F)V
    .registers 3

    :try_start_0
    invoke-interface {p0, p1}, Landroid/window/ITaskFpsCallback;->onFpsReported(F)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    :goto_5
    return-void
.end method


# virtual methods
.method public abstract onFpsReported(F)V
.end method
