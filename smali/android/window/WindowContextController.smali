# classes4.dex

.class public Landroid/window/WindowContextController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContextController$AttachStatus;
    }
.end annotation


# static fields
.field private static final DEBUG_ATTACH:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowContextController"


# instance fields
.field public mAttachedToDisplayArea:I

.field private final mToken:Landroid/window/WindowTokenClient;


# direct methods
.method public constructor <init>(Landroid/window/WindowTokenClient;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    iput-object p1, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    return-void
.end method


# virtual methods
.method public attachToDisplayArea(IILandroid/os/Bundle;)V
    .registers 7

    iget v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    iget-object v0, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/WindowTokenClient;->attachToDisplayArea(IILandroid/os/Bundle;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    iput v1, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    if-ne v1, v2, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachToDisplayArea fail, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowContextController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A Window Context can be only attached to a DisplayArea once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachToWindowToken(Landroid/os/IBinder;)V
    .registers 5

    iget v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, p1}, Landroid/window/WindowTokenClient;->attachToWindowToken(Landroid/os/IBinder;)V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Window Context should have been attached to a DisplayArea. AttachToDisplayArea:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detachIfNeeded()V
    .registers 3

    iget v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0}, Landroid/window/WindowTokenClient;->detachFromWindowContainerIfNeeded()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    :cond_d
    return-void
.end method
