# classes.dex

.class public final synthetic Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityTransitionCoordinator;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityTransitionCoordinator;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda1;->f$0:Landroid/app/ActivityTransitionCoordinator;

    iput p2, p0, Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda1;->f$0:Landroid/app/ActivityTransitionCoordinator;

    iget v1, p0, Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionCoordinator;->lambda$scheduleGhostVisibilityChange$1$android-app-ActivityTransitionCoordinator(I)V

    return-void
.end method
