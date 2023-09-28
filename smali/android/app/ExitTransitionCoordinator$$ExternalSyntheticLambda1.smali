# classes.dex

.class public final synthetic Landroid/app/ExitTransitionCoordinator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ExitTransitionCoordinator;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$$ExternalSyntheticLambda1;->f$0:Landroid/app/ExitTransitionCoordinator;

    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$$ExternalSyntheticLambda1;->f$0:Landroid/app/ExitTransitionCoordinator;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/app/ExitTransitionCoordinator;->lambda$startSharedElementExit$0$android-app-ExitTransitionCoordinator(Ljava/util/ArrayList;)V

    return-void
.end method
