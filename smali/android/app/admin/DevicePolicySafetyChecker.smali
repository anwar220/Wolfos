# classes.dex

.class public interface abstract Landroid/app/admin/DevicePolicySafetyChecker;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getUnsafeOperationReason(I)I
.end method

.method public abstract isSafeOperation(I)Z
.end method

.method public newUnsafeStateException(II)Landroid/app/admin/UnsafeStateException;
    .registers 4

    new-instance v0, Landroid/app/admin/UnsafeStateException;

    invoke-direct {v0, p1, p2}, Landroid/app/admin/UnsafeStateException;-><init>(II)V

    return-object v0
.end method

.method public abstract onFactoryReset(Lcom/android/internal/os/IResultReceiver;)V
.end method
