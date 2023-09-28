# classes3.dex

.class public final synthetic Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finished(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
