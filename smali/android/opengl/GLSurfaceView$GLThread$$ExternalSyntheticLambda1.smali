# classes2.dex

.class public final synthetic Landroid/opengl/GLSurfaceView$GLThread$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Landroid/opengl/GLSurfaceView$GLThread$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/opengl/GLSurfaceView$GLThread;->lambda$guardedRun$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
