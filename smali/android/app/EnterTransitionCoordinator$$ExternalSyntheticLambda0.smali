# classes.dex

.class public final synthetic Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/EnterTransitionCoordinator;


# direct methods
.method public synthetic constructor <init>(Landroid/app/EnterTransitionCoordinator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda0;->f$0:Landroid/app/EnterTransitionCoordinator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$$ExternalSyntheticLambda0;->f$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->lambda$sendSharedElementDestination$1$android-app-EnterTransitionCoordinator()V

    return-void
.end method