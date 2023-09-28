# classes.dex

.class public final synthetic Landroid/animation/AnimationHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Landroid/animation/AnimationHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/AnimationHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda0;->f$0:Landroid/animation/AnimationHandler;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .registers 4

    iget-object v0, p0, Landroid/animation/AnimationHandler$$ExternalSyntheticLambda0;->f$0:Landroid/animation/AnimationHandler;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimationHandler;->lambda$new$0$android-animation-AnimationHandler(J)V

    return-void
.end method
