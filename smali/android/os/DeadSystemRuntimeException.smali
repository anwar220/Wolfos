# classes3.dex

.class public Landroid/os/DeadSystemRuntimeException;
.super Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Landroid/os/DeadSystemException;

    invoke-direct {v0}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
