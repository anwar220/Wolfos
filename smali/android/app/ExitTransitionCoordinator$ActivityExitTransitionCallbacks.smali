# classes.dex

.class public Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ExitTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityExitTransitionCallbacks"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public isReturnTransitionAllowed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onFinish()V
    .registers 3

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->clear()V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
